FROM fedora:23

MAINTAINER Mehdi T HANDOUS

# RUN dnf -y update && dnf cleal all


RUN dnf -y install git python-pip

RUN python3 -m pip install -U pip


RUN pip3 install flask
RUN pip3 install flask_script
RUN pip3 install flask_bootstrap
RUN pip3 install flask_moment
RUN pip3 install flask_wtf

RUN mkdir -p /home/dev

WORKDIR /home/dev
# RUN git clone https://github.com/astondevops/web_server_flask.git
# la commande 5000 publ le port d'ecoute du serveur
# EXPOSE 5000

WORKDIR /home/dev/web_server_flask
ENTRYPOINT ["python3","hello.py","runserver"]