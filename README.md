Docker and Monitoring:

To build the nodeJS application and deploy the monitoring stack, please run the command : 

1.Navigate to Docker directory. You can find Dockerfile of the nodeJS application.

2.To deploy the monitoring stack, run this command: docker-compose up

3.Above command will build the nodeJS application and deploy the monitoring stack.

4.You can access the nodeJS application at localhost:80

5.You can check promtail metrics at localhost:3100/metrics

6.Confirm Loki is ready at localhost:3100/ready

7.Grafana dashboard localhost:3000

8.Username and Password for Grafana: admin and admin

** make sure docker engine is installed in the system

--------------------

Promtail is a client which fetches and forwards the logs to loki.

Loki is a log aggregation system.

Grafana is a visualizing tool which supports loki as a data source.

-------------------

Programming:

To run python program run python3 prime.py

Prompt will ask you to enter start and end range of prime number series you want.

-------------------

Infrastructure as Code (IaC):

To deploy Infrastructure via Terraform, move to Terraform directory and run below steps:

terraform init

terraform plan

terraform apply 
