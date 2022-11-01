# :roll_of_paper: Le périphérique en mode bloc (Block Device)

:bulb: en opposition a `Character Device`

Les périphériques en mode bloc réferent souvant aux disques durs dont la lecture se fait en bloc, généralement de 512 octets (bytes)

## :ab: Information sur le périphérique 

`Udev` est le gestionnaire de périphérique du noyau `Linux`. Dynamiquement, Udev crée ou enlève des noeuds de fichiers périphériques au démarrage en fonction du répertoire `/dev` pour tous types de périphériques. `Udev` fait maintenant partie de `systemd` et peut être controllé par `$ systemctl status systemd-udevd`.

- [ ] Pour avoir des informations sur un périphérique: (i.e `/dev/ubuntu-vg/iscsi-lv`)

```
$ udevadm info --query property --name /dev/ubuntu-vg/iscsi-lv
DEVPATH=/devices/virtual/block/dm-1
DEVNAME=/dev/dm-1
DEVTYPE=disk
MAJOR=253
MINOR=1
SUBSYSTEM=block
USEC_INITIALIZED=8756642703164
DM_UDEV_DISABLE_LIBRARY_FALLBACK_FLAG=1
DM_UDEV_PRIMARY_SOURCE_FLAG=1
DM_UDEV_RULES=1
DM_UDEV_RULES_VSN=2
DM_NAME=ubuntu--vg-iscsi--lv
DM_UUID=LVM-HKIv7LZ8lAU2TLmwaLrT0eCuRQwJJ9efoV0aa0SfTVZwDsctMoF6dfv9xlyxv115
DM_SUSPENDED=0
DM_VG_NAME=ubuntu-vg
DM_LV_NAME=iscsi-lv
DM_TABLE_STATE=LIVE
DM_STATE=ACTIVE
DEVLINKS=/dev/disk/by-id/dm-name-ubuntu--vg-iscsi--lv /dev/mapper/ubuntu--vg-iscsi--lv /dev/disk/by-id/dm-uuid-LVM-HKIv7LZ8lAU2TLmwaLrT0eCuRQwJJ9efoV0aa0SfTVZwDsctMoF6dfv9xlyxv115 /dev/ubuntu-vg/iscsi-lv
TAGS=:systemd:
```

- [ ] pour avoir la taille d'un périphérique

```
$ sudo fdisk --list /dev/mapper/ubuntu--vg-iscsi--lv
Disk /dev/mapper/ubuntu--vg-iscsi--lv: 100 GiB, 107374182400 bytes, 209715200 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
```

- [ ] pour avoir son :id: ou encore son **PARTUUID**

```
$ echo "blockdevice-"`sudo blkid --match-tag PARTUUID --output value /dev/sda3`
blockdevice-943643da-1a54-4b2f-b1fa-e1c27ba61b96
```

- [ ] pour enfin avoir le nom du noeud

```
$ uname --nodename
brooks
```
# References

https://www.thegeekdiary.com/beginners-guide-to-udev-in-linux/
