nginx:
  pkg:
    - installed
  service:
    - running
    - watch:
      - pkg: nginx
      - file: /etc/nginx/sites-available/default

/etc/nginx/sites-available/default:
  file:
    - managed
    - source: /srv/salt/default
    - user: root
    - group: root
    - mode: 644
