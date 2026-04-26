FROM apache/hive:4.0.0

ENV SERVICE_NAME=metastore
ENV DB_DRIVER=postgres

USER root

RUN apt-get update
RUN apt-get install curl -y
RUN curl --insecure https://repo1.maven.org/maven2/org/postgresql/postgresql/42.5.6/postgresql-42.5.6.jar > /opt/hive/lib/postgres.jar
RUN curl --insecure https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-azure/3.3.2/hadoop-azure-3.3.2.jar > /opt/hive/lib/hadoop-azure.jar
RUN curl --insecure https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/3.4.2/hadoop-aws-3.4.2.jar > /opt/hadoop/lib/hadoop-aws.jar
# RUN curl --insecure https://repo1.maven.org/maven2/software/amazon/awssdk/bundle/2.33.0/bundle-2.33.0.jar > /opt/hadoop/lib/aws-sdk-bundle.jar
COPY core-site.xml /opt/hadoop/etc/hadoop/core-site.xml

RUN chmod 774 /opt/hive/data/warehouse

USER hive
