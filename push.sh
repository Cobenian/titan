#!/bin/sh
echo "Stopping Phoenix server...."
ssh  -t  -i ~/.ssh/demoitio.pem ec2-user@api.demoit.io "./stop.sh "
echo "Pushing code..."

echo "Starting Phoenix..."
ssh  -t  -i ~/.ssh/demoitio.pem ec2-user@api.demoit.io "./start.sh "
