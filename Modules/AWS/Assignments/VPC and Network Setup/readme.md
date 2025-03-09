# AWS VPC with Public and Private Subnets

## Objective
This assignment involves creating a custom Virtual Private Cloud (VPC) with public and private subnets, configuring internet access using an Internet Gateway (IGW) and a NAT Gateway (NGW), and deploying EC2 instances with proper segmentation.

---

## Steps to Complete the Assignment

### 1. Create a VPC
1. Navigate to the **VPC** section in the AWS console and create a VPC.
2. Create subnets and route tables simultaneously and assign them to the VPC.
3. Set the **IPv4 CIDR block** to `10.0.0.0/16`.
4. Select **one Availability Zone (AZ)** with **one public subnet** and **one private subnet**.
5. Create **one NAT Gateway (NGW)**.
6. Complete the VPC creation process.

### 2. Configure Internet Access
#### Routing for IGW and NGW
1. Click on **Resource Map**.
2. Select the route table linked to the **public subnet** and ensure it is associated with the **IGW** with a destination of `0.0.0.0/0`. This allows instances in the public subnet to access the internet.
3. Modify the route table for the **private subnet**:
   - Ensure its route table is linked to the **NGW** with a destination of `0.0.0.0/0`.
   - This allows the private subnet to access the internet while blocking inbound traffic.

### 3. Deploy EC2 Instances
#### Public EC2 Instance
1. Use the **launch template** from the first lab to create an EC2 instance.
2. Under **Network Settings**:
   - Select the **new VPC** and **public subnet**.
   - Enable **Auto-assign Public IP**.

#### Private EC2 Instance
1. Use the **same launch template** to create the EC2 instance.
2. Under **Network Settings**:
   - Select the **same VPC** but the **private subnet**.
   - Disable **Auto-assign Public IP**.

### 4. Configure Secure Access to the Private Instance
1. Configure the **Security Group**:
   - Allow **SSH access (port 22)** only from the private IP of the **public EC2 instance**.
   - Attach this security group to the **private EC2 instance**.
2. Configure the **public EC2 instance as a Bastion Host**:
   - Remove the **NGW** to restrict traffic within the VPC.
   - Update the **route table of the private subnet** to remove the NGW, allowing only **VPC internal routing**.

### 5. Enable CloudWatch for Logging & Monitoring
1. SSH into the EC2 instance and install the **CloudWatch Agent**:
   ```sh
   sudo yum install -y amazon-cloudwatch-agent
   sudo systemctl enable amazon-cloudwatch-agent
   sudo systemctl start amazon-cloudwatch-agent
   ```
2. In the AWS console, navigate to **CloudWatch** and create a **Log Group**.
3. Edit the CloudWatch agent configuration:
   ```sh
   sudo vim /opt/aws/amazon-cloudwatch-agent/bin/config.json
   ```
   - Configure the JSON file to specify:
     - **Log file path**
     - **CloudWatch log group name**
     - **Stream name (EC2 instance ID)**
4. Save the changes and restart the CloudWatch agent:
   ```sh
   sudo systemctl restart amazon-cloudwatch-agent
   ```

---

## Conclusion
By completing this assignment, you have successfully:
- Set up a **VPC** with **public and private subnets**.
- Configured internet access with **IGW and NGW**.
- Deployed EC2 instances with **proper segmentation**.
- Secured access using a **bastion host**.
- Enabled **CloudWatch** for logging and monitoring.

