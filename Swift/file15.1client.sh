#!/bin/bash

# Set up environment
export ENDPOINT=172.16.0.1
export SERVICE_TOKEN=ADMIN
export SERVICE_ENDPOINT=http://${ENDPOINT}:35357/v2.0

# Swift Proxy Address
export SWIFT_PROXY_SERVER=172.16.0.2

# Configure the OpenStack Storage Endpoint
keystone --token $SERVICE_TOKEN --endpoint $SERVICE_ENDPOINT service-create --name swift --type object-store --description 'OpenStack Storage Service'

# Service Endpoint URLs
ID=$(keystone service-list | awk '/\ swift\ / {print $2}')

# Note we're using SSL
PUBLIC_URL="https://$SWIFT_PROXY_SERVER:443/v1/AUTH_\$(tenant_id)s"
ADMIN_URL="https://$SWIFT_PROXY_SERVER:443/v1"
INTERNAL_URL=$PUBLIC_URL

keystone endpoint-create --region RegionOne --service_id $ID --publicurl $PUBLIC_URL --adminurl $ADMIN_URL --internalurl $INTERNAL_URL

# Get the service tenant ID
SERVICE_TENANT_ID=$(keystone tenant-list | awk '/\ service\ / {print $2}')

# Create the swift user
keystone user-create --name swift --pass swift --tenant_id $SERVICE_TENANT_ID --email swift@localhost --enabled true

# Get the swift user id
USER_ID=$(keystone user-list | awk '/\ swift\ / {print $2}')

# Get the admin role id
ROLE_ID=$(keystone role-list | awk '/\ admin\ / {print $2}')

# Assign the swift user admin role in service tenant
keystone user-role-add --user $USER_ID --role $ROLE_ID --tenant_id $SERVICE_TENANT_ID

exit
