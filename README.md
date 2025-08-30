# 🐧 Linux Commands Cheatsheet

A quick reference of **most used Linux commands** — organized section-wise for DevOps beginners.

---

## 📂 File & Directory Management
```bash
pwd              # Show current working directory
ls               # List files
ls -la           # List files (detailed + hidden)
cd /path/to/dir  # Change directory
mkdir dir_name   # Create directory
rmdir dir_name   # Remove empty directory
rm -rf dir_name  # Remove directory with files
touch file.txt   # Create empty file
cp file1 file2   # Copy file
mv file1 file2   # Move/Rename file
cat file.txt     # View file contents
less file.txt    # Scroll file contents
head -n 10 file  # Show first 10 lines
tail -n 10 file  # Show last 10 lines
tail -f file.log # Watch file live (useful for logs)
```

## 📦 Package Management
### For Debian/Ubuntu:
```bash
sudo apt update          # Update package list
sudo apt upgrade         # Upgrade installed packages
sudo apt install nginx   # Install package
sudo apt remove nginx    # Remove package
```

### For RHEL/CentOS:
```bash
sudo yum install nginx   # Install package
sudo yum remove nginx    # Remove package
```

## 👤 User/Group Management
```bash
whoami             # Show current user
who                # Show logged in users
id                 # Show user ID and groups
passwd username    # Change user password
su - username      # Switch user
sudo command       # Run command as root

# For UbuntuOS
adduser username   # Add new user
deluser username   # Remove user
addgroup groupname # Add new group
delgroup groupname # Remove group

# For CentOS
useradd username   # Add new user
userdel username   # Remove the user
groupadd groupname # Add new group
groupdel groupname # Remove the group
```

## ⚙️ File Permissions
```bash
ls -l                     # Show file permissions

# After running ls -l command we have different types of files like the file 
# prefix with - then its a regular file
# prefix with d then its a directory
# prefix with c then its a Keyboard character file
# prefix with b then its a blockdisc file
# prefix with l then its a link file

# To create a link file
ln -s <filepath> <linkname>
# ln means we are creating a link
# -s means its a soft link
# eg ln -s /etc/devops/jenkins/jenkins.logs jenkinlog
unlink <linkname>   # To unlink the link

chmod 755 script.sh       # Change permissions (rwxr-xr-x)
# 4(read) + 2(write) + 1(execute) = 7
chown user:group file.txt # Change ownership
```

## 📡 Networking
```bash
ifconfig                   # Show network interfaces
ip addr show               # Show IP addresses
ping google.com            # Test connectivity
curl http://example.com    # Fetch URL
wget http://example.com    # Download file
netstat -tulnp             # Show open ports
ss -tulnp                  # Show open ports (newer tool)
scp file user@host:/path   # Copy file to remote server
ssh user@host              # Connect to remote server
```

## 🖥️ Process & System Monitoring
```bash
ps aux                # Show running processes
top                   # Live process monitor
htop                  # Better process monitor (if installed)
kill <PID>            # Kill process with its configuration and its dependencies
kill -9 <PID>         # Kill process by PID, Only kill the process not its configuration and data
df -h                 # Show disk usage
du -sh /path          # Show folder size
free -h               # Show memory usage
uptime                # Show system uptime & load
dmesg | less          # Show kernel logs
journalctl -xe        # Show systemd logs
```

## 📂 Compression & Archiving
```bash
tar -cvf files.tar dir/    # Create tar archive
tar -xvf files.tar         # Extract tar archive
tar -czvf files.tar.gz dir # Create compressed archive
tar -xzvf files.tar.gz     # Extract compressed archive
gzip file.txt              # Compress file
gunzip file.txt.gz         # Decompress file
```

## 📝 Searching & Finding
```bash
find /path -name "*.log"     # Find files by name
grep "error" file.log        # Search text in file
grep -r "error" /var/log     # Search text recursively
history                      # Show command history
```

## ⚡ Disk & Storage
```bash
mount /dev/sdb1 /mnt         # Mount disk
umount /mnt                  # Unmount disk
lsblk                        # List block devices
fdisk -l                     # Show disks and partitions
```

## I/O Redirections
```bash
# if you don't want to see output of any command like installation comments of a packags
# then you can redirect its output to a file or a null filr

uptime > /tmp/output.txt  
# uptime shows how long machine is up
# > redirect to mentioned path
# if mentioned file is not present then its create a new file
# if data is present then its override the previous data

uptime >> /tmp/output.txt
# it will append the data

uptime > /dev/null 
# if user don't want to store and see output of any command then user can redirect it to null
```


## 🤖 Bash Scripting Basics
```bash
#!/bin/bash

# Variables
name="Jass"
echo "Hello $name"

# Conditions
if [ $name == "Jass" ]; then
  echo "Welcome"
fi

# Loops
for i in 1 2 3; do
  echo "Number $i"
done
```

## 🎯 Pro Tips
- Use lsof -u username to check which files opened by this user.
- Use wc -l <filepath> command to add line number to a file
- Use --help with commands (example: ls --help)
- Combine commands with pipes | (example: grep "error" file.log | less)

  ✅ This cheatsheet is part of my DevOps Learning Journey.
I’ll keep updating as I learn more tools like Git, Jenkins, Docker, Kubernetes, Ansible, and Terraform. 🚀
