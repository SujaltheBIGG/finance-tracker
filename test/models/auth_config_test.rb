require "test_helper"

class AuthConfigTest < ActiveSupport::TestCase
  test "google_oauth_providers excludes other SSO strategies" do
    AuthConfig.stubs(:sso_providers).returns([
      { id: "oidc", strategy: "openid_connect", name: "openid_connect" },
      { id: "google", strategy: "google_oauth2", name: "google_oauth2" },
      { id: "github", strategy: "github", name: "github" }
    ])

    assert_equal [ "google_oauth2" ], AuthConfig.google_oauth_providers.map { |provider| provider[:name] }
  end
end
