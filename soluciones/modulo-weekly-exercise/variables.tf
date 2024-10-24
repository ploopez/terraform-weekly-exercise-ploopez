//Nombre del grupo de recursos
variable "resource_group_name" {
  description = "Nombre del Resource Group existente en Azure"
  type        = string
  validation {
    condition     = length(var.resource_group_name) > 0
    error_message = "The resource group name must not be empty."
  }
}

//Nombre de la red virtual 
variable "vnet_name" {

  description = "Nombre de la VNet"
  type        = string
  validation {
    condition     = length(var.vnet_name) > 0 && can(regex("^vnet[a-z]{2,}tfexercise\\d{2,}$", var.vnet_name))
    error_message = "vnet_name no puede estar vacío debe comenzar con 'vnet', seguido de al menos dos caracteres en el rango [a-z], seguido de 'tfexercise', y terminar con al menos dos dígitos numéricos."
  }
}

// Espacio de direcciones de la red virtual
variable "vnet_address_space" {
  description = "Espacio de direcciones de la Virtual Network"
  type        = list(string)
  validation {
    condition     = can(cidrsubnet(element(var.vnet_address_space, 0), 0, 0))
    error_message = "The VNet address space must be a valid CIDR block."
  }
}

variable "location" {
  description = "Ubicación donde se desplegará la VNet"
  default     = "West Europe"
}


variable "subnets" {
    description = "Subredes de la VNet"
    type = map(object({
        name                 = string
        resource_group_name  = string
        virtual_network_name = string
        address_prefixes     = list(string)
    }))
  
}

# variable "subnet2" {
#     description = "Subredes de la VNet"
#     type = map(object({
#         name                 = string
#         resource_group_name  = string
#         virtual_network_name = string
#         address_prefixes     = list(string)
#     }))
  
# }

# Network Interface
variable "network_interface" {
  description = "The network interface configuration"
  type = map(object({
    subnet               = string
    ip_configuration = object({
      name                          = string
      private_ip_address_allocation = string
      public_ip_address_id          = optional(string)
    })
  }))
}




# Máquinas virtuales Linux
variable "linux_virtual_machine" {
    description = "Máquinas virtuales Linux"
    type        = map(object({
        computer_name       = string
        name                = string
        resource_group_name = string
        location            = string
        size                = string
        admin_username      = string
        admin_password      = string
        os_disk = object({
            caching              = string
            storage_account_type = string
        })
        source_image_reference = object({
            publisher = string
            offer     = string
            sku       = string
            version   = string
        })
    }))
  
}


variable "network_security_groups" {
  description = "Configuración de los Network Security Groups"
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    security_rules = list(object({
      name                       = string
      priority                   = number
      direction                  = string
      access                     = string
      protocol                   = string
      source_port_range          = string
      destination_port_range     = string
      source_address_prefix      = string
      destination_address_prefix = string
    }))
  }))
}



# Aks Cluster

variable "aks_cluster_name" {
  description = "El nombre del clúster de AKS."
  type        = string
}

variable "node_count" {
  description = "El número de nodos en el clúster AKS."
  type        = number
  default     = 1
}

variable "node_vm_size" {
  description = "El tamaño de la máquina virtual para los nodos del clúster AKS."
  type        = string
  default = "Standard_B2s"
}


# Azure Container Registry
variable "acr_name" {
  description = "The name of the Azure Container Registry"
  type        = string
}