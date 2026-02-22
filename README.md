# Parch Linux Mini

A minimal rescue and live ISO build of Parch Linux using Archiso.

## Overview

Parch Linux Mini is a lightweight live ISO designed for system rescue, recovery, and installation purposes. It provides a minimal working environment with essential tools for troubleshooting, disk management, and installing Parch Linux.

## Features

- **Live Environment**: Boot into a fully functional Linux environment
- **Installation**: Use `archinstall-rs` for easy installation
- **Rescue Tools**: Includes disk partitioning, data recovery, and system repair utilities
- **Hardware Support**: Broad hardware compatibility with various firmware and drivers
- **UEFI & BIOS**: Supports both boot modes

## Included Packages

### Base System
- `base` - Core Arch Linux base packages
- `linux` - Latest kernel
- `linux-firmware` - Hardware firmware files

### Installation
- `archinstall-rs` - Modern installer (recommended)
- `arch-install-scripts` - Traditional Arch installation scripts

### Rescue & Recovery
- `btrfs-progs` - BTRFS filesystem tools
- `clonezilla` - Disk imaging
- `cryptsetup` - LUKS encryption
- `ddrescue` - Data recovery
- `dmraid` - RAID support
- `fsarchiver` - Filesystem backup
- `gpart` - Partition editor
- `gptfdisk` - GPT partitioning
- `lvm2` - Logical Volume Manager
- `mdadm` - RAID management
- `partclone` - Partition cloning
- `parted` - Partition editor
- `partimage` - Partition imaging
- `testdisk` - Data recovery
- `smartmontools` - S.M.A.R.T. monitoring

### Network
- `dhcpcd` - DHCP client
- `dnsmasq` - DNS/DHCP server
- `iwd` - WiFi daemon
- `iw` - Wireless tools
- `nfs-utils` - NFS support
- `openssh` - SSH server/client
- `openvpn` - VPN support
- `wpa_supplicant` - WiFi management

### Virtualization
- `hyperv` - Hyper-V drivers
- `open-vm-tools` - VMware tools
- `qemu-guest-agent` - QEMU support
- `virtualbox-guest-utils-nox` - VirtualBox tools

### Storage & Filesystems
- `bcachefs-tools` - Bcachefs support
- `e2fsprogs` - Ext2/3/4 tools
- `exfatprogs` - ExFAT support
- `f2fs-tools` - F2FS support
- `jfsutils` - JFS support
- `nilfs-utils` - NILFS2 support
- `ntfs-3g` - NTFS support
- `xfsprogs` - XFS support

### Parch Specific
- `parch-branding` - Parch Linux branding
- `parch-pacman-next` - Enhanced pacman
- `parch-zram` - ZRAM configuration
- `paru` - AUR helper

## Building

### Requirements
- Arch Linux or derivative
- `archiso` package
- Root privileges

### Build Steps

```bash
# Run as root
sudo ./build.sh
```

The build script will:
1. Check for Pacman (Arch Linux package manager)
2. Install required build dependencies
3. Build the ISO using mkarchiso

### Output

The resulting ISO will be located in the `out/` directory:
- `ParchMini-YYYY.MM.DD-x86_64.iso`

## Usage

### Booting the ISO

1. Write the ISO to a USB drive:
   ```bash
   sudo dd if=out/ParchMini-*.iso of=/dev/sdX bs=4M status=progress
   ```

2. Boot from USB and select the appropriate boot mode (UEFI or BIOS)

### Installing Parch Linux

Run the installer:
```bash
archinstall-rs
```

### Network Configuration

**WiFi (iwctl):**
```bash
iwctl
device list
station <device> scan
station <device> connect <SSID>
```

**Ethernet**: Should work automatically via DHCP

### Rescue Operations

- Partition disks: `parted`, `gparted`, `fdisk`, `cfdisk`
- Check SMART: `smartctl -a /dev/sdX`
- Mount LUKS: `cryptsetup luksOpen /dev/sdX mapper-name`
- LVM: `lvscan`, `vgchange -ay`

## System Requirements

- **Architecture**: x86_64
- **RAM**: Minimum 512MB (recommended 2GB+)
- **Storage**: 4GB+ for ISO image

## Boot Modes

- **UEFI**: systemd-boot
- **BIOS**: Syslinux

## License

See LICENSE file for details.
