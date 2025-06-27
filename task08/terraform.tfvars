tags = { Creator = "vladyslav_levchenko@epam.com" }

resources_name_prefix = "cmtr-pp46akvy-mod8"
location              = "North Europe"

acr_sku    = "Standard"
image_name = "cmtr-pp46akvy-mod8-app"

redis_sku_family  = "C"
redis_sku         = "Basic"
redis_capacity    = 2
redis_hostname    = "redis-hostname"
redis_primary_key = "redis-primary-key"


aci_dns_label = "cmtrpp95akvymod8dns"
aci_sku       = "Standard"

aks_node_pool_disk_type = "Ephemeral"
aks_node_pool_size      = "Standard_D2ads_v5"
aks_node_pool_count     = 1
aks_node_pool_name      = "system"

keyvault_sku = "standard"
