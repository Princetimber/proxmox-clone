resource "proxmox_vm_qemu" "vm_clone" {
  count       = length(local.vm_configs)
  name        = local.vm_configs[count.index].name
  target_node = local.vm_configs[count.index].target_node
  vmid        = local.vm_configs[count.index].vmid
  cores       = local.vm_configs[count.index].cores
  sockets     = local.vm_configs[count.index].sockets
  memory      = local.vm_configs[count.index].memory
  balloon     = local.vm_configs[count.index].balloon
  full_clone  = local.vm_configs[count.index].full_clone
  clone       = local.vm_configs[count.index].clone
  tags        = local.vm_configs[count.index].tags
  onboot      = local.vm_configs[count.index].onboot
  oncreate    = local.vm_configs[count.index].oncreate
  bios        = local.vm_configs[count.index].bios
  bootdisk    = local.vm_configs[count.index].bootdisk
  scsihw      = local.vm_configs[count.index].scsihw
  numa        = local.vm_configs[count.index].numa
}
