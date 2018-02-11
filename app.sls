include:
- python
- nginx
- blog

/home/ubuntu/blogenv:
    virtualenv.managed:
        - no_site_packages: True
        - runas: ubuntu
        - require:
            - pkg: python3-dev
            - pkg: python3-pip
            - pkg: virtualenv
    cmd.run:
        - names:
          - pip3 install flask gunicorn
          - /bin/bash /srv/salt/run_gun.sh  > /dev/null 2>&1
