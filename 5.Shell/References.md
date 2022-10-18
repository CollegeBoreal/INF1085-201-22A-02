
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
| Log into local & remote graphical and text mode consoles            | `login`, `nano`, `vi`                               |
| Search for files                                                    | `find` $4.4.3                                       |
| Evaluate and compare the basic file system features and options     | `ls`, `touch`, `cat`  $1.2.3                        |
| Compare and manipulate file content                                 | `diff`, `grep`, `wc`                                |
| Use input-output redirection (e.g. >, >>, \| `pipe`, 2>)    | `2>&1`                                              |
| :-1: Analyze text using basic regular expressions                   |                                                     |
| Archive, backup, compress, unpack, and uncompress files             | `tar` $4.4.2                                        |
| Create, delete, copy, and move files and directories                | `mkdir`,`rmdir`,`cd`,`rm`,`mv`,`stat` $1.2.3   |
| :-1: Create and manage hard and soft links                          |                                                     |
| List, set, and change standard file permissions                     | `ls`, `chmod` $4.4.4                                |
| Read, and use system documentation                                  | `man`, `info` $1.3                                  |
| Manage access to the root account                                   | `sudo`, `su` $1.2.6                                 |

#### Operation of Running Systems – 20%

|   Feature                                                           | Chapter                                       |
|---------------------------------------------------------------------|-----------------------------------------------|
| Boot, reboot, and shut down a system safely                         |                                               |
| :-1: Boot or change system into different operating modes           |                                               |
| Install, configure and troubleshoot bootloaders                     |                                               |
| Diagnose and manage processes                                       | `top`, `ps`                                   |
| Locate and analyze system log files                                 | `journalctl`, `/var/log` $11.1.1              |
| :-1: Schedule tasks to run at a set date and time                   |                                               |
| :-1: Verify completion of scheduled jobs                            |                                               |
| Update software to provide required functionality and security      |                                               |
| Verify the integrity and availability of resources                  |                                               |
| Verify the integrity and availability of key processes              |                                               |
| :-1: Change kernel runtime parameters, persistent and non-persistent|                                               |
| Use scripting to automate system maintenance tasks                  |                                               |
| Manage the startup process and services (In Services Configuration) |                                               |
| :-1: List and identify SELinux/AppArmor file and process contexts   |                                               |
| Manage Software                                                     |                                               |
| :-1: Identify the component of a Linux distribution that a file ....|                                               |

#### User and Group Management – 10%

|   Feature                                                           | Chapter                                       |
|---------------------------------------------------------------------|-----------------------------------------------|
| Create, delete, and modify local user accounts                      |  `useradd`, groupadd                           |
| Create, delete, and modify local groups and group memberships       |                                               |
| :-1: Manage system-wide environment profiles                        |                                               |
| Manage template user environment                                    |                                               |
| :-1: Configure user resource limits                                 |                                               |
| :-1: Manage user privileges                                         |                                               |
| :-1: Configure PAM                                                  |                                               |

#### Networking – 12%

|   Feature                                                           | Chapter                                       |
|---------------------------------------------------------------------|-----------------------------------------------|
| Configure networking and hostname resolution statically or dynamic..| `ifconfig`,                                   |
| Configure network services to start automatically at boot           |                                               |
| :-1: Implement packet filtering                                     |                                               |
| Start, stop, and check the status of network services               |                                               |
| Statically route IP traffic                                         | `ip route`                                    |
| :-1: Synchronize time using other network peers                     |                                               |

#### Service Configuration – 20%

|   Feature                                                           | Chapter                                       |
|---------------------------------------------------------------------|-----------------------------------------------|
| Configure a caching DNS server                                      |                                               |
| :-1: Maintain a DNS zone                                            |                                               |
| :-1: Configure email aliases                                        |                                               |
| Configure SSH servers and clients                                   | `systemctl`                                   |
| :-1: Restrict access to the HTTP proxy server                       |                                               |
| :-1: Configure an IMAP and IMAPS service                            |                                               |
| :-1: Query and modify the behavior of system services at various ...|                                               |
| :-1: Configure an HTTP server                                       |                                               |
| :-1: Configure HTTP server log files                                |                                               |
| :-1: Configure a database server                                    |                                               |
| :-1: Restrict access to a web page                                  |                                               |
| Manage and configure containers                                     | `docker container`                            |
| Manage and configure Virtual Machines                               | `docker-machine`                              |

#### Storage Management – 13%

|   Feature                                                           | Chapter                                       |
|---------------------------------------------------------------------|-----------------------------------------------|
| List, create, delete, and modify physical storage partitions        | `df`, `du`                                    |
| :-1: Manage and configure LVM storage                               |                                               |
| :-1: Create and configure encrypted storage                         |                                               |
| :-1: Configure systems to mount file systems at or during boot      |                                               |
| :-1: Configure and manage swap space                                |                                               |
| :-1: Create and manage RAID devices                                 |                                               |
| :-1: Configure systems to mount file systems on demand              |                                               |
| Create, manage and diagnose advanced file system permissions        |                                               |
| :-1: Setup user and group disk quotas for filesystems               |                                               |
| :-1: Create and configure file systems                              |                                               |

<hr>


[User Admin] :

```
$ useradd --create-home myuser 
```
