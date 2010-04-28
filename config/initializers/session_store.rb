# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_cardpicker_session',
  :secret      => 'ba012bc1a2fcfc0381da8d8877d97ba07b9c65e8eecb927e2a365d4da5f2727c45b8580d82c82b98a74b161a963781004654b2f2108e6a429b68ebd74240cee4'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
