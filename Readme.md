# Monitoring VMs and Containers with Prometheus

## Introduction

This project consist in monitor 2 VMs using the stack Prometheus, Node Exporter, CAdvisor and Grafana.

## Archtecture

In this project there is:

* **monitor_server** the machine that will be installed the Prometheus, node_exporter and Grafana to monitor himself.

* **app_server** the machine that will be installed node_exporter, docker and CAdvisor to collect metrics and send to Prometheus on monitor_server machine.

## Usage

### Step 1 Setup the enviroment using the command

`vagrant up`

### Step 2 Download and Install Prometheus, Node_exporter and Grafana on Monitor_server

[Prometheus](https://www.cherryservers.com/blog/install-prometheus-ubuntu)


Access the Prometheus typing on browser:

`http://192.168.57.52:9090`

[Node_exporter](https://prometheus.io/docs/guides/node-exporter/)


Access the Node_exporter typing on browser:

`http://192.168.57.52:9100`

[Grafana](https://grafana.com/grafana/download?edition=oss)


Access the Grafana typing on browser:

`http://192.168.57.52:3000`

### Step 3 Download Node_exporter and CAdvisor on App_server

[CAdvisor](https://installati.one/install-cadvisor-ubuntu-20-04/)

Access the CAdvisor typing on browser:

`http://192.168.57.50:4194`

### Step 4 Edit the prometheus.yml and alert.rules files

Edit the prometheus.ylm file to get metrics, and alert.rules to send alrts about the state of the machines, like:

[Prometheus.yml file](https://pastebin.com/nuSVvFAV)

[Alert.rules file](https://pastebin.com/EphnGhc8)

Restart the prometheus.service using the command:

`sudo systemctl restart prometheus.service`

If you need, edit the prometheus.service and node_exporter.service, like:

[Prometheus.service](https://pastebin.com/ywHhhx0q)

[Node_exporter.service](https://pastebin.com/uZ9yxysW)


--------------------

Enjoyed ;)