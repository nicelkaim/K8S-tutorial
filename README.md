Under Contruction

Questions: https://github.com/pwolthausen/k8s-workshops/blob/master/7-live-debugging/Questions.md

### Instructions

All Steps should be taken in Cloud Shell, as git, terraform, and important env var are preinstalled

Step 1: 

    git clone https://github.com/nicelkaim/K8S-tutorial && chmod 777 K8S-tutorial/yamls/deploy.sh && cd K8S-tutorial/terraform

 Note: It's important we work in the K8S-tutorial/terraform directory for the upcoming commands
  
Step 2: 

    gcloud iam service-accounts keys create key.json --iam-account=IAM-ACCOUNT-EMAIL-TO-USE

 Note: Your SA needs IAM permissions to create GKE clusters and workloads, VPC networks, and GCE Instances
  
Step 3: 

    chmod 777 install.sh && ./../yamls/deploy.sh
