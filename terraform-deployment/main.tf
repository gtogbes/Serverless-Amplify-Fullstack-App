// This is a template file for a basic deployment.
// Modify the parameters below with actual values
module "sample-qs" {
  // location of the module - can be local or git repo
  source = "./modules/sample-module"
# - Amplify App -
  sample_create_codecommit_repo  = true

  # - Cognito -
  # Admin Users to create
  sample_admin_cognito_users = {
    NarutoUzumaki : {
      username       = "Godstime"
      given_name     = "gtogbes"
      family_name    = ""
      email          = ""
      email_verified = true // no touchy
    },
    SasukeUchiha : {
      username       = "gtogbes"
      given_name     = "Godstime"
      family_name    = ""
      email          = ""
      email_verified = true // no touchy
    }
  }
  # Standard Users to create
  sample_standard_cognito_users = {
    DefaultStandardUser : {
      username       = "default"
      given_name     = "Default"
      family_name    = "User"
      email          = "example@example.com"
      email_verified = true // no touchy
    }
  }

}
