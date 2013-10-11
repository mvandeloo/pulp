# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
PulpApp::Application.config.secret_key_base = 'ea438aa56a989b1bda7dd0bdd28ce758bd5c2bde000b436beb7a4be167d92306987d3015fa6f96bea9002a1cb6b88b8d64442aff24c7ed9110ccdea6c582c0c6'
