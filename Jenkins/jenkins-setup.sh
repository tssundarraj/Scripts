#!/bin/bash 

  

# GitLab CE Installation Script for Ubuntu/Debian 

# Make sure to run this as root or with sudo 

  

set -e 

  

echo "📦 Updating system packages..." 

apt update && apt upgrade -y 

  

echo "🔧 Installing required dependencies..." 

apt install -y curl openssh-server ca-certificates tzdata perl 

  

echo "📡 Adding GitLab CE repository..." 

curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | bash 

  

echo "🚀 Installing GitLab CE..." 

EXTERNAL_URL="http://localhost" apt install -y gitlab-ce 

  

echo "🔄 Configuring GitLab..." 

gitlab-ctl reconfigure 

  

echo "✅ GitLab installation complete!" 

echo "🌐 Access it at: http://localhost" 
