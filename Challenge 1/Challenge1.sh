#!/bin/bash


if [ "$#" -ne 8 ]; then
    echo "Usage: $0 <VM_NAME> <OS_TYPE> <CPUS> <RAM_SIZE> <VRAM_SIZE> <DISK_SIZE> <SATA_CONTROLLER_NAME> <IDE_CONTROLLER_NAME>"
    exit 1
fi

# Assign arguments to variables
VM_NAME=$1
OS_TYPE=$2
CPUS=$3
RAM_SIZE=$4
VRAM_SIZE=$5
DISK_SIZE=$6
SATA_CONTROLLER_NAME=$7
IDE_CONTROLLER_NAME=$8

# Create the VM
VBoxManage createvm --name "$VM_NAME" --ostype "$OS_TYPE" --register

# Configure the VM
VBoxManage modifyvm "$VM_NAME" --cpus "$CPUS" --memory "$RAM_SIZE" --vram "$VRAM_SIZE"

# Create a virtual hard disk
VBoxManage createhd --filename "$VM_NAME.vdi" --size "$DISK_SIZE" --format VDI

# Create and configure the SATA controller
VBoxManage storagectl "$VM_NAME" --name "$SATA_CONTROLLER_NAME" --add sata --controller IntelAhci
VBoxManage storageattach "$VM_NAME" --storagectl "$SATA_CONTROLLER_NAME" --port 0 --device 0 --type hdd --medium "$VM_NAME.vdi"

# Create and configure the IDE controller
VBoxManage storagectl "$VM_NAME" --name "$IDE_CONTROLLER_NAME" --add ide

# Print the VM configuration
VBoxManage showvminfo "$VM_NAME"