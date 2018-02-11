include:
  - python
  - app

create blog:
  git.latest:
    - name: https://github.com/knrd1/flask.git
    - target: /home/ubuntu/blogenv
    - user: ubuntu
    - rev: master
    - branch: master
    - force_reset: True
    - require:
        - virtualenv: /home/ubuntu/blogenv
        - pkg: python3-dev
        - pkg: python3-pip
        - pkg: virtualenv

