ARG python_version=3

FROM python:${python_version}

ARG ansible_pip_version

ENV ANSIBLE_HOST_KEY_CHECKING=False

RUN apt-get -qq update \
    && apt-get install -qqy \
        rsync \
    && pip install "ansible${ansible_pip_version}" \
    && rm -rf /var/lib/apt/lists/* \
    && rm -Rf /usr/share/doc && rm -Rf /usr/share/man \
    && apt-get clean \
    && mkdir -p /root/.ssh/ \
    && curl -L "https://gitlab.com/geoffrey-grebert/docker-systemd/raw/master/keys/ansible.pem" -o /root/.ssh/id_rsa \
    && chmod 600 /root/.ssh/id_rsa

CMD [ "ansible", "--version" ]
