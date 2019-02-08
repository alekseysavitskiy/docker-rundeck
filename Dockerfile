FROM rundeck/rundeck:3.0.13
USER root
RUN apt-get update && \
    apt-get --yes install software-properties-common && \
    apt-add-repository --yes --update ppa:ansible/ansible && \
    apt-get --yes install ansible 
USER rundeck
