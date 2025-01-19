
  

This project contains terraform files to reproduce the challenge scenario

  
### Prerequisites
You need to have a DigitalOcean account that is already set up and a SSH key pair
  

### Clone this repository

  

git clone https://github.com/kzwolenik95/static-site-server.git

  

### Create *terraform.tfvars* file and add your digital ocean public key name to the *ssh-key-name* variable

  
Example:

    ssh-key-name  =  "my-pub-key"

### Export DigitalOcean API token

     export DO_PAT="dop_v1_2 ... 4"

### Run terraform to create EC2 instance with your ssh keys

    terraform apply -var "do_token=${DO_PAT}" -var "pvt_key=$HOME/.ssh/id_rsa" 

Terraform will create one server of size 1 VCPU 1 GB ram in FRA1 region, with the latest LTS version of ubuntu. Additionally it will setup ubuntu user on the server. You can access the server on root or ubuntu user with the ssh key that is configured in DigitalOcean


### In the terraform output you will see the public IP of the droplet
run the `./deploy.sh` script with a public ip of the droplet, the script expects files to be present in site_files directory

    chmod +x deploy.sh
    ./deploy.sh XXX.YYY.ZZZ.XYZ

### Access the website in your browser using the server's public IP address
  

**Solution submission for the project:**

https://roadmap.sh/projects/static-site-server

