apache_install:
  pkg.installed:
    {% if grains.os_family == 'Debian' %}
    - name: apache2
    {% elif grains.os_family == 'RedHat'  %}
    - name: httpd
    {% endif %}
  service.running:
    {% if grains.os_family == 'Debian' %}
    - name: apache2
    - enable: True
    {% elif grains.os_family == 'RedHat' %}
    - name: httpd
    - enable: True
    {% endif %}
  file.managed:
    {% if grains.os_family == 'Debian' %}
    - name: /var/www/html/index.html
    - contents: <h1> This is Debian </h1>
    {% elif grains.os_family == 'RedHat' %}
    - name: /var/www/html/index.html
    - contents: <h1> This is Redhat </h1>
    {% endif %}
