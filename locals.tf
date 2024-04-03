locals {
  vm_configs = [
    {
      name        = "prod-ca1"
      target_node = "pve"
      vmid        = 10035
      cores       = 2
      sockets     = 1
      memory      = 4096
      balloon     = 0
      full_clone  = true
      clone       = "prod-winserver-2022-gui"
      tags        = "windows,prod,ca1"
      onboot      = false
      oncreate    = false
      bios        = "ovmf"
      bootdisk    = "scsi0"
      scsihw      = "virtio-scsi-pci"
      numa        = true
    },
    {
      name        = "prod-s1"
      target_node = "pve"
      vmid        = 10036
      cores       = 2
      sockets     = 1
      memory      = 4096
      balloon     = 0
      full_clone  = true
      clone       = "prod-winserver-2022-core"
      tags        = "windows,prod,s1"
      onboot      = false
      oncreate    = false
      bios        = "ovmf"
      bootdisk    = "scsi0"
      scsihw      = "virtio-scsi-pci"
      numa        = true
    }
  ]
}
