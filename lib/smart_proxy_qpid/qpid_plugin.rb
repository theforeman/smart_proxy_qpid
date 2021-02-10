module QpidProxy
  class Plugin < ::Proxy::Plugin
    plugin "qpid", ::QpidProxy::VERSION

    default_settings :qpid_url => 'amqp:ssl:localhost:5671'
    default_settings :event_queue_name => 'katello.agent'

    expose_setting :qpid_url
    expose_setting :event_queue_name

    http_rackup_path File.expand_path("qpid_http_config.ru", File.expand_path("../", __FILE__))
    https_rackup_path File.expand_path("qpid_http_config.ru", File.expand_path("../", __FILE__))
  end
end
