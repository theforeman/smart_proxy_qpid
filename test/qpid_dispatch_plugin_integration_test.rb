require 'test_helper'
require 'json'
require 'root/root_v2_api'
require 'rack/test'
require 'mocha/test_unit'
require 'smart_proxy_qpid/qpid_dispatch_plugin'

class QpidDispatchFeaturesTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Proxy::PluginInitializer.new(Proxy::Plugins.instance).initialize_plugins
    Proxy::RootV2Api.new
  end

  def test_features
    Proxy::DefaultModuleLoader.any_instance.expects(:load_configuration_file).with('qpid_dispatch.yml').returns(enabled: true)

    get '/features'
    response = JSON.parse(last_response.body)
    qpid_dispatch = response['qpid_dispatch']

    assert_equal 'running', qpid_dispatch['state']
  end
end
