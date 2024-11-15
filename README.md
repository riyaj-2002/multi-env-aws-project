```bash
# TO INSTALL AWS CLI
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
unzip awscliv2.zip
aws --version
aws configure

 # TO INITIATE THE TERRAFORM
terraform init

# TO SEE ANY CHANGES REQUIRED
terraform plan

# TO START THE PROCESS
terraform apply -auto-approve

# TO GENERATE KEY-PAIR FOR EC2
ssh-keygen

# TO LIST ALL THE SERVICES
terraform state list

# TO SEE CONFIGURATION OF PARTICULAR SERVICE
terraform state list show (service name on state list)

# TO DESTROY THE PROCESS
terraform destroy -auto-approve

# TO DESTROY THE PARTICULAR SERVICE
terraform destroy --target=(service name on state list)

# use (-lock=false) after terraform plan, apply and destry if you can not write state file due to multiple user
