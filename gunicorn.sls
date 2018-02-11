include:
- python

/home/ubuntu/blogenv:
    virtualenv.managed:
        - no_site_packages: True
        - runas: ubuntu
        - requirements: /srv/salt/requirements.txt
        - require:
            - pkg: python3-dev
            - pkg: python3-pip
