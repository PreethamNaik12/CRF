require "test_helper"

class UltraCentrifugeAllotedMailerTest < ActionMailer::TestCase
  test "Mail" do
    mail = UltraCentrifugeAllotedMailer.Mail
    assert_equal "Mail", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
