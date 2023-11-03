require "test_helper"

class ShortCodeTest < ActiveSupport::TestCase
  test "encode the number 0" do
    assert_equal "0", ShortCode.encode(0)
  end

  test "encode the number 1" do
    assert_equal "1", ShortCode.encode(1)
  end

  test "encode the number 10" do
    assert_equal "a", ShortCode.encode(10)
  end

  test "encode the nuber 62" do
    assert_equal "10", ShortCode.encode(62)
  end

  test "encode the number 1024" do
    assert_equal "gw", ShortCode.encode(1024)
  end

  test "encode the number 999_999" do
    assert_equal "4c91", ShortCode.encode(999_999)
  end
end
