FROM quay.io/wildfly/wildfly

ADD target/helloworld.war /opt/jboss/wildfly/standalone/deployments/
