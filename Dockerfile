FROM jboss/wildfly:21.0.1.Final
COPY out/artifacts/TEST/TEST.war /opt/jboss/wildfly/standalone/deployments/