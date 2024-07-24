#module "sandbox" {
#  source = "./modules/aft-account-request"

#  control_tower_parameters = {
#    AccountEmail              = "rnjsdn0401+sandbox01@gmail.com"
#    AccountName               = "sandbox-aft"
#    ManagedOrganizationalUnit = "Learn AFT"
#    SSOUserEmail              = "rnjsdn0401+sandbox01@gmail.com"
#    SSOUserFirstName          = "Sandbox"
#    SSOUserLastName           = "AFT"
#  }

#  account_tags = {
#    "Learn Tutorial" = "AFT"
#  }

#  change_management_parameters = {
#    change_requested_by = "HashiCorp Learn"
#    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
#  }

#  custom_fields = {
#    group = "non-prod"
#  }

#  account_customizations_name = "sandbox"
#}

module "testuser" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "rnjsdn0401+testuser01@gmail.com"
    AccountName               = "testuser"
    ManagedOrganizationalUnit = "Learn AFT"
    SSOUserEmail              = "rnjsdn0401+testuser01@gmail.com"
    SSOUserFirstName          = "testuser"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "testuser"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "testuser"
}
