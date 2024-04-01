Updated Questions and Resources for modern GCP

Original Lab by pwolthausen/ https://github.com/pwolthausen/k8s-workshops/tree/master

### Before you begin
* All Steps should be taken in Cloud Shell, as git, terraform, and important env var are preinstalled

* You will need a Google Cloud Service Account with IAM permissions to create GKE clusters and workloads, VPC networks, and GCE Instances

* You will need to edit main.tf to include the name of your GCP project in the `project` field

### Instructions

Step 1: 

    git clone https://github.com/nicelkaim/K8S-tutorial && chmod 777 K8S-tutorial/yamls/deploy.sh && cd K8S-tutorial/terraform

 Note: It's important we work in the K8S-tutorial/terraform directory for the upcoming commands
  
Step 2: 

    gcloud iam service-accounts keys create key.json --iam-account=IAM-ACCOUNT-EMAIL-TO-USE
  
Step 3: 

    chmod 777 install.sh && ./install.sh
