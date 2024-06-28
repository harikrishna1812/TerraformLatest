#this is related to ec2 instance type (CPU)
variable "instance_type" {
    default = "t2.micro"
    type = string
    description = "cpu info"
  
}
#this is related to ami images (OS)
variable "ami_id" {
    default = "ami-090252cbe067a9e58"
    type = string
    description = "cpu info"
  
}
variable "instance_name" {
    default = ["db","backend","frontend"]
    type = list
    description = "cpu info"
  
}
variable "common_tags" {
    default={
        project = "Expense"
        environment = "Dev"
        terraform = true
    }
}
variable "tags" {
    default={
        project = "Expense"
        environment = "local"
        
    }
    
  
}


#this is related to ami images (OS)
# ?
#################
# Security group
#################
# variable "create" {
#   description = "Whether to create security group and all rules"
#   type        = bool
#   default     = true
# }

# variable "create_sg" {
#   description = "Whether to create security group"
#   type        = bool
#   default     = true
# }

# variable "security_group_id" {
#   description = "ID of existing security group whose rules we will manage"
#   type        = string
#   default     = null
# }

# variable "vpc_id" {
#   description = "ID of the VPC where to create security group"
#   type        = string
#   default     = null
# }

# variable "name" {
#   description = "Name of security group - not required if create_sg is false"
#   type        = string
#   default     = null
# }

# variable "use_name_prefix" {
#   description = "Whether to use name_prefix or fixed name. Should be true to able to update security group name after initial creation"
#   type        = bool
#   default     = true
# }

# variable "description" {
#   description = "Description of security group"
#   type        = string
#   default     = "Security Group managed by Terraform"
# }

# variable "tags" {
#   description = "A mapping of tags to assign to security group"
#   type        = map(string)
#   default     = {}
# }

# variable "create_timeout" {
#   description = "Time to wait for a security group to be created"
#   type        = string
#   default     = "10m"
# }

# variable "delete_timeout" {
#   description = "Time to wait for a security group to be deleted"
#   type        = string
#   default     = "15m"
# }

# ##########
# # Ingress
# ##########
# variable "ingress_rules" {
#   description = "List of ingress rules to create by name"
#   type        = list(string)
#   default     = []
# }

# variable "ingress_with_self" {
#   description = "List of ingress rules to create where 'self' is defined"
#   type        = list(map(string))
#   default     = []
# }

# variable "ingress_with_cidr_blocks" {
#   description = "List of ingress rules to create where 'cidr_blocks' is used"
#   type        = list(map(string))
#   default     = []
# }

# variable "ingress_with_source_security_group_id" {
#   description = "List of ingress rules to create where 'source_security_group_id' is used"
#   type        = list(map(string))
#   default     = []
# }

# variable "ingress_cidr_blocks" {
#   description = "List of IPv4 CIDR ranges to use on all ingress rules"
#   type        = list(string)
#   default     = []
# }

# variable "ingress_prefix_list_ids" {
#   description = "List of prefix list IDs (for allowing access to VPC endpoints) to use on all ingress rules"
#   type        = list(string)
#   default     = []
# }

# variable "ingress_with_prefix_list_ids" {
#   description = "List of ingress rules to create where 'prefix_list_ids' is used only"
#   type        = list(map(string))
#   default     = []
# }

# ###################
# # Computed Ingress
# ###################
# variable "computed_ingress_rules" {
#   description = "List of computed ingress rules to create by name"
#   type        = list(string)
#   default     = []
# }

# variable "computed_ingress_with_self" {
#   description = "List of computed ingress rules to create where 'self' is defined"
#   type        = list(map(string))
#   default     = []
# }

# variable "computed_ingress_with_cidr_blocks" {
#   description = "List of computed ingress rules to create where 'cidr_blocks' is used"
#   type        = list(map(string))
#   default     = []
# }

# variable "computed_ingress_with_source_security_group_id" {
#   description = "List of computed ingress rules to create where 'source_security_group_id' is used"
#   type        = list(map(string))
#   default     = []
# }

# variable "computed_ingress_with_prefix_list_ids" {
#   description = "List of computed ingress rules to create where 'prefix_list_ids' is used"
#   type        = list(map(string))
#   default     = []
# }

# ###################################
# # Number of computed ingress rules
# ###################################

# variable "number_of_computed_ingress_with_self" {
#   description = "Number of computed ingress rules to create where 'self' is defined"
#   type        = number
#   default     = 0
# }

# variable "number_of_computed_ingress_with_cidr_blocks" {
#   description = "Number of computed ingress rules to create where 'cidr_blocks' is used"
#   type        = number
#   default     = 0
# }
# variable "number_of_computed_ingress_with_source_security_group_id" {
#   description = "Number of computed ingress rules to create where 'source_security_group_id' is used"
#   type        = number
#   default     = 0
# }

# variable "number_of_computed_ingress_with_prefix_list_ids" {
#   description = "Number of computed ingress rules to create where 'prefix_list_ids' is used"
#   type        = number
#   default     = 0
# }

# #########
# # Egress
# #########
# variable "egress_with_self" {
#   description = "List of egress rules to create where 'self' is defined"
#   type        = list(map(string))
#   default     = []
# }

# variable "egress_with_cidr_blocks" {
#   description = "List of egress rules to create where 'cidr_blocks' is used"
#   type        = list(map(string))
#   default     = []
# }

# variable "egress_with_source_security_group_id" {
#   description = "List of egress rules to create where 'source_security_group_id' is used"
#   type        = list(map(string))
#   default     = []
# }

# variable "egress_with_prefix_list_ids" {
#   description = "List of egress rules to create where 'prefix_list_ids' is used only"
#   type        = list(map(string))
#   default     = []
# }

# variable "egress_cidr_blocks" {
#   description = "List of IPv4 CIDR ranges to use on all egress rules"
#   type        = list(string)
#   default     = ["0.0.0.0/0"]
# }

# variable "egress_prefix_list_ids" {
#   description = "List of prefix list IDs (for allowing access to VPC endpoints) to use on all egress rules"
#   type        = list(string)
#   default     = []
# }

# ##################
# # Computed Egress
# ##################
# variable "computed_egress_with_self" {
#   description = "List of computed egress rules to create where 'self' is defined"
#   type        = list(map(string))
#   default     = []
# }

# variable "computed_egress_with_cidr_blocks" {
#   description = "List of computed egress rules to create where 'cidr_blocks' is used"
#   type        = list(map(string))
#   default     = []
# }

# variable "computed_egress_with_source_security_group_id" {
#   description = "List of computed egress rules to create where 'source_security_group_id' is used"
#   type        = list(map(string))
#   default     = []
# }

# variable "computed_egress_with_prefix_list_ids" {
#   description = "List of computed egress rules to create where 'prefix_list_ids' is used only"
#   type        = list(map(string))
#   default     = []
# }

# ##################################
# # Number of computed egress rules
# ##################################

# variable "number_of_computed_egress_with_self" {
#   description = "Number of computed egress rules to create where 'self' is defined"
#   type        = number
#   default     = 0
# }

# variable "number_of_computed_egress_with_cidr_blocks" {
#   description = "Number of computed egress rules to create where 'cidr_blocks' is used"
#   type        = number
#   default     = 0
# }

# variable "number_of_computed_egress_with_source_security_group_id" {
#   description = "Number of computed egress rules to create where 'source_security_group_id' is used"
#   type        = number
#   default     = 0
# }

# variable "number_of_computed_egress_with_prefix_list_ids" {
#   description = "Number of computed egress rules to create where 'prefix_list_ids' is used only"
#   type        = number
#   default     = 0
# }

# variable "putin_khuylo" {
#   description = "Do you agree that Putin doesn't respect Ukrainian sovereignty and territorial integrity? More info: https://en.wikipedia.org/wiki/Putin_khuylo!"
#   type        = bool
#   default     = true
# }