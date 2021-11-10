# terraform-azurerm-windows
for azure windows vm
### Windows
- windows_server
    - Required Values
        ```
        resource_group_name 
        location             
        hostname
        size                
        admin_username      
        admin_password       
        os_disk_sku          
        publisher            
        offer                
        sku                  
        os_tag                  
        subnet_id            
        nic_name             
        public_ip_address_id 
        ```
    - Optional Values
        ```
        ip_configuration_name
        private_ip_address_allocation
        public_ip_address_id
        os_disk_caching
        ```
    - outputs
        ```
        windows_vm_private_ip
        windows_vm_public_ip
        nic_id
        ```