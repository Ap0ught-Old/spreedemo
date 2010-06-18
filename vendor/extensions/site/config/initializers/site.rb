if Preference.table_exists?
  Spree::Config.set(:stylesheets => 'screen,spreedemo')
  Spree::Config.set(:allow_ssl_in_production => false)
  Spree::Config.set(:logo => '/images/logo.png')
end
