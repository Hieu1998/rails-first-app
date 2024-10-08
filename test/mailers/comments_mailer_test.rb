require "test_helper"

class CommentsMailerTest < ActionMailer::TestCase
  test "submiited" do
    mail = CommentsMailer.submiited comments(:one)
    assert_equal "New Comment!", mail.subject
    assert_equal ["blog-owner@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
  end

end
