FROM jordan/rundeck:latest

RUN apt-get update -y && \
    apt-get install -y --no-install-recommends \
    acl \
    apache2 \
    asciidoc \
    bzip2 \
    cdbs \
    curl \
    debhelper \
    debianutils \
    devscripts \
    docbook-xml \
    dpkg-dev \
    fakeroot \
    gawk \
    gcc \
    git \
    libffi-dev \
    libssl-dev \
    libxml2-utils \
    locales \
    make \
    vim \
    mercurial \
    mysql-server \
    openssh-client \
    openssh-server \
    python-dev \
    pass \
    software-properties-common \
    python-httplib2 \
    python-jinja2 \
    python-keyczar \
    python-lxml \
    python-mock \
    python-mysqldb \
    python-nose \
    python-paramiko \
    python-passlib \
    python-pip \
    python-setuptools \
    python-virtualenv \
    python-yaml \
    reprepro \
    rsync \
    ruby \
    sshpass \
    subversion \
    sudo \
    tzdata \
    unzip \
    xsltproc \
    zip \
    && \
    apt-get clean

RUN pip install pip --upgrade
RUN /usr/local/bin/pip install --upgrade pycrypto cryptography

RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && \
    python get-pip.py --user && \
    /usr/local/bin/pip install ansible

RUN locale-gen pt_BR.UTF-8
RUN /usr/local/bin/pip install coverage junit-xml cryptography==2.2.2

COPY docker_files/.ssh /tmp/.ssh
RUN cp -R /tmp/.ssh ~/.ssh

RUN mkdir /var/run/sshd
# RUN echo 'root:screencast' | chpasswd
# RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
# RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile


COPY docker_files/.ssh /tmp/.ssh

#COPY docker_files/docker-entrypoint.sh /bin/docker-entrypoint.sh
#RUN chmod +x /bin/docker-entrypoint.sh

#ENTRYPOINT ["/bin/docker-entrypoint.sh"]
