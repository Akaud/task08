resource "azurerm_container_registry" "registry" {
  name                = var.acr_name
  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags
  sku                 = var.acr_sku
  admin_enabled       = true
}

resource "time_sleep" "wait_for_acr_dns" {
  create_duration = "60s"
  depends_on      = [azurerm_container_registry.registry]
}

resource "azurerm_container_registry_task" "registry_task" {
  name                  = "${var.acr_name}-task"
  container_registry_id = azurerm_container_registry.registry.id
  platform {
    os = "Linux"
  }
  docker_step {
    dockerfile_path      = "Dockerfile"
    context_path         = "https://github.com/Akaud/task08#main:task08/application"
    context_access_token = var.git_pat
    image_names          = ["${var.image_name}:latest"]
  }
  depends_on = [
    azurerm_container_registry.registry,
    time_sleep.wait_for_acr_dns
  ]
}
resource "azurerm_container_registry_task_schedule_run_now" "registry_task_schedule_run" {
  container_registry_task_id = azurerm_container_registry_task.registry_task.id
  depends_on                 = [azurerm_container_registry_task.registry_task]
}