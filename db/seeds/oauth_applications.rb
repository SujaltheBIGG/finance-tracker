# Create OAuth applications for Founder Finance's first-party apps
# These are the only OAuth apps that will exist - external developers use API keys

# Founder Finance Mobile App (shared across iOS and Android)
mobile_app = Doorkeeper::Application.find_or_create_by(name: "Founder Finance Mobile") do |app|
  app.redirect_uri = "sureapp://oauth/callback"
  app.scopes = "read_write"
  app.confidential = false # Public client (mobile app)
end

puts "Created OAuth applications:"
puts "Mobile App - Client ID: #{mobile_app.uid}"
puts ""
puts "External developers should use API keys instead of OAuth."
