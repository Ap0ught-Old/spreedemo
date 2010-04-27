# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_endpointdemo_session',
  :secret      => '15fa62c78b2388a63fbd2ffbcae9b59587052be81c058210655a4d0ae93006731a540bb9350bf730070c83dc69fe9337ea7692845ba716cb575e0ec332e62f43'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store