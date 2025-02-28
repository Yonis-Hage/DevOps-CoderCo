# Setup for Hosting NGINX with a Custom Domain

## Goals for this Assignment
- Buy a Domain from Cloudflare
- Set up an EC2 instance running NGINX
- Link the EC2 instance to the custom domain
- Configure DNS on Cloudflare by creating an A record
- Test the Setup

---

## 1. Buy a Domain from Cloudflare
- Create an account on Cloudflare and register a domain.
- Domain: `yonishage.co.uk`

## 2. Launch an EC2 Instance
- Log into the AWS console and launch an instance in EC2.
### Configure your instance:
- Use a **Linux-Based AMI**
- Choose a **Free-tier instance type** (`t2.micro`)
- Enable **Public IP Address**
- Allow **HTTP (port 80) and SSH (port 22)** in security group settings
- Launch the instance and **download the (.pem) private key** for SSH access

## 3. Install NGINX
- SSH into your EC2 instance using the private key:
  ```sh
  ssh -i your-key.pem ec2-user@your-ec2-public-ip
  ```
- Update the instance and install NGINX:
  - For Linux:
    ```sh
    sudo yum update -y
    sudo yum install nginx -y
    ```
  - For Ubuntu:
    ```sh
    sudo apt update
    sudo apt install nginx -y
    ```

## 4. Configure DNS on Cloudflare
- Create an **A record** in Cloudflare:
  - **Name**: `nginx.domain.co.uk`
  - **IPv4 Address**: Public IP of your EC2 instance
- Wait for **DNS propagation**

## 5. Visit the Domain
- Open your browser and visit:  
  **`http://nginx.domain.co.uk`**

---

This setup should successfully link your domain to your NGINX server hosted on AWS EC2.
