# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_mootate_session',
  :secret      => '7ce9c6d9ba8bf82e4c2dcec566ec8dd4c156cb94d73f956a6dcf6539d3e1c5fa82e8399f75c200973b9f40be0b5e36e9d888966ce23e80b19a498a57c5c35dbe'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
