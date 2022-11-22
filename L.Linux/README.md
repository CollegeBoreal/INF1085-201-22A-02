# Linux


# :bookmark: [Reference](../REFERENCES.md)


```
* Essential Commands – 25%
* Operation of Running Systems – 20%
* User and Group Management – 10%
* Networking – 12%
* Service Configuration – 20%
* Storage Management – 13%
```

#### Essential Commands – 25%

|   Feature                                                           | Chapter                                             |
|---------------------------------------------------------------------|-----------------------------------------------------|
| :+1: Log into local & remote graphical and text mode consoles       | `login`, `nano`, `vi`                               |
| :+1: Search for files                                               | `find` $4.4.3                                       |
| :+1: Evaluate and compare the basic file system features and options| `ls`, `touch`, `cat`  $1.2.3                        |
| :+1: Compare and manipulate file content                            | `diff`, `grep`, `wc`                                |
| :+1: Use input-output redirection (e.g. >, >>, \| `pipe`, 2>)       | `2>&1`                                              |
|      Analyze text using basic regular expressions                   |                                                     |
| :+1: Archive, backup, compress, unpack, and uncompress files        | `tar` $4.4.2                                        |
| :+1: Create, delete, copy, and move files and directories           | `mkdir`,`rmdir`,`cd`,`rm`,`mv`,`stat` $1.2.3        |
| Create and manage hard and soft links                               | `ln`                                                |
| :+1: List, set, and change standard file permissions                | `ls`, `chmod` $4.4.4                                |
| :+1: Read, and use system documentation                             | `man`, `info` $1.3                                  |
| :+1: Manage access to the root account                              | `sudo`, `su` $1.2.6                                 |

#### Operation of Running Systems – 20%

|   Feature                                                           | Chapter                                       |
|---------------------------------------------------------------------|-----------------------------------------------|
| :+1: Boot, reboot, and shut down a system safely                    |  shutdown -h now                              |
| Boot or change system into different operating modes                |                                               |
| Install, configure and troubleshoot bootloaders                     |                                               |
| :+1: Diagnose and manage processes                                  |  `top`, `ps`                                  |
| :+1: Locate and analyze system log files                            | `journalctl`, `/var/log` $11.1.1              |
|  Schedule tasks to run at a set date and time                       |                                               |
|  Verify completion of scheduled jobs                                |                                               |
| Update software to provide required functionality and security      |                                               |
| Verify the integrity and availability of resources                  |                                               |
| Verify the integrity and availability of key processes              |                                               |
| Change kernel runtime parameters, persistent and non-persistent     |                                               |
| Use scripting to automate system maintenance tasks                  |                                               |
| Manage the startup process and services (In Services Configuration) |  `systemctl enable`                           |
| List and identify SELinux/AppArmor file and process contexts        |                                               |
| Manage Software                                                     |  `apt-get, dpkg`                              |
| Identify the component of a Linux distribution that a file ....     |                                               |

#### User and Group Management – 10%

|   Feature                                                           | Chapter                                       |
|---------------------------------------------------------------------|-----------------------------------------------|
| :+1: Create, delete, and modify local user accounts                 |  `useradd`                                    |
| :+1: Create, delete, and modify local groups and group memberships  |  `usermod` --append --groups                  |
| Manage system-wide environment profiles                             |                                               |
| :+1: Manage template user environment                               | `.bashrc`                                     |
| Configure user resource limits                                      |                                               |
| Manage user privileges                                              |                                               |
| Configure PAM                                                       |                                               |

#### Networking – 12%

|   Feature                                                           | Chapter                                       |
|---------------------------------------------------------------------|-----------------------------------------------|
| :+1: Configure networking and hostname resolution statically or dynamic..| `ip addr`,                                    |
| :+1: Configure network services to start automatically at boot           | `netplan apply`                               |
| Implement packet filtering                                          |                                               |
| Start, stop, and check the status of network services               |                                               |
| :+1: Statically route IP traffic                                    | `ip route`                                    |
| Synchronize time using other network peers                          |                                               |

#### Service Configuration – 20%

|   Feature                                                           | Chapter                                       |
|---------------------------------------------------------------------|-----------------------------------------------|
| Configure a caching DNS server                                      |                                               |
| :+1: Maintain a DNS zone                                            | `name.com`, `namecheap.com`                   |
| Configure email aliases                                             |                                               |
| Configure SSH servers and clients                                   | `opensshd`, PKI                               |
| Restrict access to the HTTP proxy server                            |                                               |
| Configure an IMAP and IMAPS service                                 |                                               |
| Query and modify the behavior of system services at various ...     |                                               |
| Configure an HTTP server                                            | `Projet`                                      |
| Configure HTTP server log files                                     |                                               |
| Configure a database server                                         | `Projet`                                      |
| Restrict access to a web page                                       |                                               |
| Manage and configure containers                                     | `docker container`                            |
| Manage and configure Virtual Machines                               | `docker context`                              |

#### Storage Management – 13%

|   Feature                                                           | Chapter                                       |
|---------------------------------------------------------------------|-----------------------------------------------|
| :+1: List, create, delete, and modify physical storage partitions   | `df`, `du`                                    |
| :+1: Manage and configure LVM storage                               |                                               |
| Create and configure encrypted storage                              |                                               |
| :+1: Configure systems to mount file systems at or during boot      |                                               |
| Configure and manage swap space                                     |                                               |
| :+1: Create and manage RAID devices                                 |                                               |
| :+1: Configure systems to mount file systems on demand              |                                               |
| :+1: Create, manage and diagnose advanced file system permissions   |                                               |
| Setup user and group disk quotas for filesystems                    |                                               |
| Create and configure file systems                                   |                                               |

<hr>


[User Admin] :

```
$ useradd --create-home myuser 
```


