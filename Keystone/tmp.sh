!# /bin/bash

#sudo echo "paste.filter_factory =keystone.middleware.auth_token:filter_
#factory" >>/etc/glance/glance-api-paste.ini

#sudo echo "service_protocol = http" >>/etc/glance/glance-api-paste.ini

sudo echo "service_host = 172.16.0.1" >>/etc/glance/glance-api-paste.ini

#sudo echo "service_port = 5000" >>/etc/glance/glance-api-paste.ini

sudo echo "auth_host = 172.16.0.1" >>/etc/glance/glance-api-paste.ini

#sudo echo "auth_port = 35357" >>/etc/glance/glance-api-paste.ini

#sudo echo "auth_protocol = http" >>/etc/glance/glance-api-paste.ini

sudo echo "auth_uri = http://172.16.0.1:5000/" >>/etc/glance/glance-api-paste.ini

sudo echo "admin_tenant_name = service" >>/etc/glance/glance-api-paste.ini

sudo echo "admin_user = glance" >>/etc/glance/glance-api-paste.ini

sudo echo "admin_password = glance" >>/etc/glance/glance-api-paste.ini

exit
