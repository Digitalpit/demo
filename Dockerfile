FROM centos:7

LABEL maintainer=piotr org.label-schema.vendor="IDIT Sapiens" org.label-schema.name="IDIT OpenJDK"


RUN yum install -y \
   java-1.8.0-openjdk \
   java-1.8.0-openjdk-devel

ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk/


ENV echo $JAVA_HOME

RUN  java -version

CMD ["bash"]