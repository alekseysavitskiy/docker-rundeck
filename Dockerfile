FROM rundeck/rundeck:3.0.23
USER root
RUN apt-get update && \
    apt-get --yes install software-properties-common && \
    apt-add-repository --yes --update ppa:ansible/ansible && \
    apt-get --yes install ansible 
ADD ansible.cfg /home/rundeck/.ansible.cfg
RUN chown rundeck:rundeck /home/rundeck/.ansible.cfg
USER rundeck
