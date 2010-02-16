# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_fuelcalc_session',
  :secret      => '4cc69db51841cef435f2fe5e6237df3a1a965d479f0e4740bc57cc1b71219541ef1d355d6f6b343808655c6b56805be276e339ab354b8396a40aa1b96ecd9ae9'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
