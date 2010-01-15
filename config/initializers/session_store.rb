# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_smerf_ui_session',
  :secret      => '50513a42aa931e5c6c2e740e85c520b267ce0f0804e27007501cd7f10922557f3425f843b1789af2426aa0af3e832235d6a32970adcb9c185e27ff6c0837eaa6'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
