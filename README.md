# Docker and Monitoring:

To build the nodeJS application and deploy the monitoring stack, please run the command : 

1.Navigate to Docker floder(anshutask/Docker/). You can find Dockerfile of the nodeJS application.

2.To deploy the monitoring stack, run this command: docker-compose up

Above command will build the nodeJS application and deploy the monitoring stack.

Access the nodeJS application at localhost:80

Check Promtail metrics at localhost:3100/metrics

Confirm Loki is ready at localhost:3100/ready

Access Grafana dashboard at localhost:3000

Username and Password for Grafana: admin and admin

** make sure docker engine is installed in the system

** volume in docker-compose is mounted at /var/log so make sure to have this path in your system or else you can change the path as per your convenience in the docker-docpose.yml

--------------------

Promtail is a client which fetches and forwards the logs to loki.

Loki is a log aggregation system.

Grafana is a visualizing tool which supports loki as a data source.

-------------------

# Programming:

To run python program ,run this command in root folder (anshutask/) : python3 prime.py

Prompt will ask you to enter start and end range of prime number series you want.

-------------------

# Infrastructure as Code (IaC):

To deploy Infrastructure via Terraform, navigate to Terraform folder (anshutask/Terraform/) and run below steps:

terraform init

terraform plan

terraform apply 

** we can modify the input values of variables as per the requirements in terraform.tfvars
