output "aci_fqdn" {
  description = "The FQDN of the App in Azure Container Instance."
  value       = module.aci.aci_fqdn
}

output "aks_lb_ip" {
  description = "The Load Balancer IP address of the APP in AKS."
  value       = data.kubernetes_service.app_service_lb.status[0].load_balancer[0].ingress[0].ip
}