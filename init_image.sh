#!/bin/bash
# 
# Install latest versions of curl, wget, git, nodejs and npm
#
apt-get update && apt-get install -y --no-install-recommends \
	ca-certificates \
	curl \
	wget \
	git \
	git-core \
	openssh-client \
	nodejs \
	npm \
	&& rm -rf /var/lib/apt/lists/*
#
# For Ubuntu we'll need to set-up the symbolic link /usr/bin/nodejs --> /usr/bin/node
#
sudo ln -s /usr/bin/nodejs /usr/bin/node
# 
# Use node package manager to install project dependencies from /conectus/package.json
#
cd /conectus
npm set progress=false && npm install
# 
# We also need to install gulp and bower globally
# 
npm install -g gulp bower
#
# Note: bower won't run with sudo (out of the box), so we need to fix that
#
echo '{ "allow_root": true }' > /root/.bowerrc
#
# Update /conectus/README.md with version info for ubuntu, node, npm, bower 
#
lsb_release -a >> /conectus/README.md
echo -e Node:'\t\t'`node -v` >> /conectus/README.md
echo -e Npm:'\t\t'`npm -v` >> /conectus/README.md
echo -e Bower:'\t\t'`bower -v` >> /conectus/README.md
echo -e Image built:'\t'`date` >> /conectus/README.md
#
# Install generator-dwx-portal from our internal npm registry
#
#npm set registry http://10.0.9.100:4873
#npm adduser --registry http://10.0.9.100:4873
#npm install -g generator-dwx-portal
