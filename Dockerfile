FROM ghdl/vunit:mcode

COPY generate_doc.py /generate_doc.py
COPY requirements.txt /requirements.txt

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - \
 && apt-get update -qq \
 && DEBIAN_FRONTEND=noninteractive apt-get -y install --no-install-recommends \
    git \
    nodejs \
    python3-pip \
 && pip3 install -r requirements.txt --progress-bar off \
 && npm install -g https://github.com/TerosTechnology/colibri/tarball/master \
 && node --version

ENTRYPOINT ["/generate_doc.py"]
CMD ["html"]
