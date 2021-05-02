{% set lookup = { 'Debian': { 'pkg': 'apache2', 'service': 'apache2' }, 'RedHat': { 'pkg': 'httpd', 'service': 'httpd'} }  %}
{% set apache = lookup[grains.os_family] %}

install_apache:
  pkg.installed:
    - name: {{ apache.pkg }}
  service.running:
    - name: {{ apache.service }}
    - enable: True
