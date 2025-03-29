# Application Load Balancer Lab

## Objective
Deploy an Application Load Balancer (ALB) with two EC2 instances behind it. Ensure security group (SG) configurations allow only ALB access to EC2 instances while preventing direct access.

---

## 1. Launch the EC2 Instances
- Go to EC2 in the AWS console and launch instances
- Select Ubuntu as the AMI
- Install NGINX on the first instance

```bash
#!/bin/bash
# Update system & install Nginx
yum update -y && amazon-linux-extras enable nginx1 && yum install -y nginx -y

# Start and enable Nginx
systemctl start nginx && systemctl enable nginx

# Remove default Nginx page
rm -f /usr/share/nginx/html/index.html

# Get instance details
INSTANCE_ID=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)
AVAIL_ZONE=$(curl -s http://169.254.169.254/latest/meta-data/placement/availability-zone)
SERVER_NAME=$(hostname -A)

# Create a simple HTML page
cat > /usr/share/nginx/html/index.html <<EOF
<!DOCTYPE html>
<html>
<head><title>EC2 Info</title></head>
<body style="font-family: Arial; text-align: center; padding: 50px;">
    <h1>EC2 Instance Details</h1>
    <p><strong>Server Name:</strong> $SERVER_NAME</p>
    <p><strong>Instance ID:</strong> $INSTANCE_ID</p>
    <p><strong>Availability Zone:</strong> $AVAIL_ZONE</p>
</body>
</html>
EOF

# Restart Nginx
systemctl restart nginx
```

- AWS will assign a VPC to this instance automatically
- Launch another instance and repeat the same steps ensuring both EC2 instances are in the same VPC and AZ

---

## 2. Create Application Load Balancer
### Create ALB:
- Go to the Load Balancers section in AWS
- Create a new Application Load Balancer
- Assign a name
- Enable IPv4 Addressing
- Select the same VPC as your EC2 instances
- Select the same Availability Zone where your EC2 instances are located

### Configure SG for ALB:
- Create a Security Group (SG) for ALB
- Allow inbound traffic
  - Port 80 (HTTP) from the internet
  - Port 443 (HTTPS) from the internet

### Configure Listeners and Routing:
1. Ensure HTTP (port 80) is set up
2. Create a Target Group
   - Target Type: Instances
   - Name: Choose a unique name
   - IP Version: IPv4
   - VPC: Same as EC2 instances
   - Protocol: HTTP/1
   - Health Check Path: /index.html
3. Assign EC2 instances to the Target Group
4. Set the Target Group as the Default Action
5. Create the Load Balancer

### Configure SG for EC2:
- Create a Security Group (SG) for EC2 instances
- Allow inbound traffic only from the ALB SG
  - Port 80 (HTTP) from ALB SG
  - Port 443 (HTTPS) from ALB SG

---

## 3. Implement Auto Scaling Group (ASG) for EC2 Instances
### Create a Launch Template:
- Select one of the existing EC2 instances
- Create a Launch Template from the instance

### Create ASG:
- Create a new Auto Scaling Group (ASG)
- Select the Launch Template created earlier
- Select the same VPC and AZ as the EC2 instances
- Choose Balanced Best Effort to distribute instances across zones
- Attach the ALB created earlier and enable ELB Health Checks
- Set minimum and maximum instance counts
- Create the Auto Scaling Group

---

## 4. Configure HTTPS Listeners and SSL Certificate
1. Go to AWS Certificate Manager (ACM)
2. Click Request a Certificate and choose Public Certificate
3. Enter your domain name
4. Choose DNS Validation
5. Request the certificate and update CNAME records in your domain’s DNS settings
6. Wait for AWS to validate and issue the certificate
7. Go to your ALB navigate to Listeners and add a listener
8. Select Protocol: HTTPS (port 443)
9. Select your SSL Certificate from ACM
10. Save the configuration

---

## Conclusion
You have successfully deployed an Application Load Balancer (ALB) with EC2 instances an Auto Scaling Group (ASG) and HTTPS with an SSL Certificate

Happy Deploying 🚀
