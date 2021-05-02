apache2:
  pkg.installed:
    - name: apache2
  service.running:
    - name: apache2
    - enable: True
  file.managed:
    - name: /var/www/html/index.html
    - contents: |
                <h1>This is from salt</h1>
