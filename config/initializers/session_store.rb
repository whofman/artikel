# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_artikels_session',
  :secret      => 'dc52abd1f5fdf6d4e48106d8c14f7dbc0c98d7d72032dc67f1dcaf5f9e062d21b8c36a0149a3790719fdc65030b90bfcd038fd9f070a1dca725857c6fb10b865'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
