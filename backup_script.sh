#!/bin/bash
# Script to back up files to GitHub

# Variables
REPO_DIR="/path/to/Lab-6-Backups"
SSHD_CONFIG="/etc/ssh/sshd_config"
VSFTPD_CONF="/etc/vsftpd.conf"
NAMED_CONF="/etc/named.conf"

# Copy files to the repository directory
cp $SSHD_CONFIG $REPO_DIR/ssh-ftp_sshd_config
cp $VSFTPD_CONF $REPO_DIR/ssh-ftp_vsftpd.conf
cp $NAMED_CONF $REPO_DIR/dns_named.conf

# Change to repository directory
cd $REPO_DIR

# Commit and push changes
git add .
git commit -m "Automated backup: $(date)"
git push origin main
