
# Terraform GCP Infrastructure as Code (IaC)  

# Author: 
Lucy Chimoli

## **Project Overview**
This project provisions a **Google Cloud Platform (GCP) infrastructure** using Terraform. It follows an **Infrastructure as Code (IaC)** approach and includes:  
- A **VPC** with **public** and **private** subnets  
- A **Compute Engine VM** in the public subnet  
- A **Cloud SQL Managed Database** in the private subnet  
- **Security Groups (Firewall Rules)** restricting SSH access to specific IPs  
- **Modular Terraform structure** with proper state management  

---

## **Design Choices**

### **1 Modularity**
The project follows a modular structure to ensure reusability and maintainability. It consists of:  
- `modules/vpc` – Handles **VPC and subnets**  
- `modules/compute` – Manages the **Compute Engine VM**  
- `modules/database` – Creates the **Cloud SQL instance**  
- `modules/security` – Configures **firewall rules**  

Using modules makes it easy to scale or modify individual components without affecting the entire infrastructure.

---

### **2 VPC and Subnet Design**
- **VPC Name:** `iac-vpc`  
- **Subnets:**  
  - **Public Subnet** (`iac-public-subnet`) – Hosts the Compute Engine VM  
  - **Private Subnet** (`iac-private-subnet`) – Hosts the Cloud SQL database  
- **Routing:**  
  - The **Compute Engine VM** uses **NAT Gateway** for internet access  
  - The **Database** remains private (no external access)  

This design ensures **security** by keeping the database private while allowing the VM to communicate externally.

---

### **3 Security (Firewall Rules)**
- **Allow SSH Access (Restricted by IP):**  
  - Only allows SSH access from **specific IP ranges**  
  - Prevents unauthorized access  
- **Database Access:**  
  - Private IP only (no public IP assigned)  
  - Compute Engine VM can connect to Cloud SQL  

This ensures that SSH access is **restricted** and the database remains **secure**.

---

### **4 State Management**
Terraform **state files** are stored securely using **Google Cloud Storage (GCS) backend** for remote state management.  

#### **Terraform Backend Configuration:**
```hcl
terraform {
  backend "gcs" {
    bucket  = "my-terraform-state-bucket"
    prefix  = "terraform/state"
  }
}

##### **Prerequisites
1. Install Terraform (>=1.3.0)
2. Install Google Cloud SDK
3. Authenticate with GCP:

gcloud auth application-default login

4. Enable required APIs:

gcloud services enable compute.googleapis.com sqladmin.googleapis.com

### Deployment Steps
git clone https://github.com/yourusername/terraform-iac.git
cd terraform-iac