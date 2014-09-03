# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'

Spree.config do |config|
  # config.override_actionmailer_config = false
  config.override_actionmailer_config = true
  config.mails_from = 'emma@sincuru.com'
  # Set domain for emails
  ActionMailer::Base.default_url_options[:host] = config.site_url
end




Spree.user_class = "Spree::LegacyUser"

Spree::Config.class_eval do 
  preference :admin_email, :string, :default => 'admin@localhost'
end