require 'test_helper'

class ApiKeyTest < ActiveSupport::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    # Do nothing
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

  test "api key is set when application is run" do
    ENV.update YAML.load_file('config/application.yml')[Rails.env] rescue {}
    key = ENV['VOTE_SMART_API_KEY']
    assert_not_nil key
    assert_not_empty key
  end

end