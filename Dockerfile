FROM quay.io/wildfly/wildfly

ADD target/helloworld.war /opt/wildfly/standalone/deployments/
