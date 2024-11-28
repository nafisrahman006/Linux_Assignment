#!/bin/bash

# File System Navigation
echo "Listing home directory contents:"
ls  # Lists the contents of the home directory.

echo "Changing directory to /var/log and listing contents:"
cd /var/log  # Changes the current directory to /var/log.
ls  # Lists the contents of /var/log.

echo "Finding bash executable path:"
which bash  # Displays the full path of the bash executable.

echo "Finding current shell:"
echo $SHELL  # Outputs the current shell being used.

# File and Directory Operations
mkdir linux_fundamentals  # Creates a directory named 'linux_fundamentals'.
mkdir linux_fundamentals/scripts  # Creates a subdirectory named 'scripts'.
touch linux_fundamentals/example.txt  # Creates an empty file named 'example.txt'.
cp linux_fundamentals/example.txt ~/linux_fundamentals/scripts/  # Copies the file to the 'scripts' directory.
mkdir linux_fundamentals/backup  # Creates a 'backup' directory.
mv linux_fundamentals/example.txt ~/linux_fundamentals/backup/  # Moves the file to the 'backup' directory.

# Permissions
chmod 644 linux_fundamentals/backup/example.txt  # Sets file permissions to -rw-r--r--.
ls -l linux_fundamentals/backup/example.txt  # Displays file details including permissions.

# File Modification
sudo adduser student  # Creates a new user named 'student'.
ls /home  # Lists all user home directories.
touch example.txt  # Creates an empty file named 'example.txt'.
ls  # Lists files in the current directory.
sudo chown student example.txt  # Changes ownership of the file to 'student'.
ls -l example.txt  # Verifies ownership.
sudo chgrp student example.txt  # Changes the group ownership to 'student'.
ls -l example.txt  # Verifies group ownership.

# Ownership
mkdir project  # Creates a directory named 'project'.
touch project/report.txt  # Creates an empty file named 'report.txt' inside 'project'.
chmod 644 project/report.txt  # Sets file permissions to -rw-r--r--.
chmod 755 project  # Sets directory permissions to drwxr-xr-x.
ls -ld project  # Displays detailed information about the 'project' directory.
ls -l project  # Displays detailed information about files in 'project'.

# User Add/Modify
sudo useradd -m -d /home/developer_home -s /bin/sh developer  # Adds a user with custom home and shell.
getent passwd developer  # Verifies the user's information.
sudo usermod -l devuser -d /home/developer_home -m developer  # Renames the user to 'devuser'.
sudo groupadd devgroup  # Creates a group named 'devgroup'.
sudo usermod -aG devgroup devuser  # Adds 'devuser' to 'devgroup'.
echo "devuser:password" | sudo chpasswd  # Sets the password for 'devuser'.
getent passwd devuser  # Verifies the renamed user's information.
groups devuser  # Lists the groups the user belongs to.
su - devuser  # Switches to 'devuser'.

# Symbolic and Hard Links
touch original.txt  # Creates an empty file 'original.txt'.
ln -s original.txt softlink.txt  # Creates a symbolic link pointing to 'original.txt'.
ls -l softlink.txt  # Verifies the symbolic link.
rm original.txt  # Deletes the original file.
ls -l softlink.txt  # Observes the broken link.

touch datafile.txt  # Creates an empty file 'datafile.txt'.
ln datafile.txt hardlink.txt  # Creates a hard link pointing to 'datafile.txt'.
ls -l datafile.txt hardlink.txt  # Verifies the hard link.
ls -i datafile.txt hardlink.txt  # Checks the inode numbers.
rm datafile.txt  # Deletes the original file.
ls -l hardlink.txt  # Verifies the hard link still works.

# Find .txt Files
find ~ -name "*.txt"  # Finds all .txt files in the home directory.

# Package Installation
sudo apt update  # Updates the package repository cache.
sudo apt install -y tree  # Installs the 'tree' package.

# Install Google Cloud SDK
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list  # Adds the Google Cloud SDK repo.
sudo apt install -y apt-transport-https ca-certificates  # Installs required packages.
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo tee /usr/share/keyrings/cloud.google.gpg > /dev/null  # Imports the GPG key.
sudo apt update  # Updates the package repository cache.
sudo apt install -y google-cloud-cli  # Installs the Google Cloud CLI.

# Verify Installations
tree --version  # Displays the installed version of 'tree'.
gcloud --version  # Displays the installed version of 'gcloud'.
