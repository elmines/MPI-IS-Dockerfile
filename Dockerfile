FROM ubuntu

RUN apt-get update

RUN apt-get install -y git make cmake gcc g++ python3 libboost-dev python3-venv python-pip python3-dev

RUN git clone https://github.com/MPI-IS/mesh.git mesh/

RUN python3 -m venv --copies my_venv

SHELL ["/bin/bash", "-c"]
RUN source my_venv/bin/activate; cd mesh; make all;

CMD /bin/bash
