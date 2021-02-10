require 'test_helper'
require 'json'
require 'root/root_v2_api'
require 'rack/test'
require 'mocha/test_unit'
require 'smart_proxy_qpid/qpid_plugin'

class QpidFeaturesTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Proxy::PluginInitializer.new(Proxy::Plugins.instance).initialize_plugins
    Proxy::RootV2Api.new
  end

  def test_features
    Proxy::DefaultModuleLoader.any_instance.expects(:load_configuration_file).with('qpid.yml').returns(enabled: true, qpid_url: 'amqp:ssl:localhost:5671')

    get '/features'
    response = JSON.parse(last_response.body)
    qpid = response['qpid']

    assert_equal 'running', qpid['state']

    expected_settings = {
      'qpid_url' => 'amqp:ssl:localhost:5671',
      'event_queue_name' => 'katello.agent'
    }
    assert_equal(expected_settings, qpid['settings'])
  end
end
