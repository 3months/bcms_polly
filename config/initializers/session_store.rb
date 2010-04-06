# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_bcms_polly_session',
  :secret      => 'ae89bbe11d73fd9cea95fba6e1d0cdbc614ab834b669cb2fd01a9e7dfb1278dbc31b5f358ba662fbe0e88cff22bbdd698be8f9c650a920ca16c67f6d2ff8af5f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
