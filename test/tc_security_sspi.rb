#####################################################################
# tc_security_sspi.rb
#
# Test case for the Windows::Security::SSPI module.
#####################################################################
require 'windows/security/SSPI'
require 'test/unit'

class TC_Windows_Security_SSPI < Test::Unit::TestCase
  include Windows::Security::SSPI

  def test_methods
    assert_respond_to(self, :AcceptSecurityContext)
    assert_respond_to(self, :AcquireCredentialsHandle)
    assert_respond_to(self, :FreeCredentialsHandle)
  end

  def test_constants
    assert_not_nil(SECPKG_CRED_INBOUND)
    assert_not_nil(SECPKG_CRED_OUTBOUND)
    assert_not_nil(SECPKG_CRED_BOTH)
  end
end
