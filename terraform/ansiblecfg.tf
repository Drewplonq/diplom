resource "local_file" "hosts_cfg_kubespray" {
  count = var.exclude_ansible ? 0 : 1 # Если exclude_ansible true, ресурс не создается

  content  = templatefile("${path.module}/ansiblecfg.tftpl", {
    workers = yandex_compute_instance.worker
    masters = yandex_compute_instance.master
  })
  filename = "../ansible/kubespray/inventory/k8sya/hosts.yaml"
}