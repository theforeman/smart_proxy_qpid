module QpidDispatchProxy
  class Plugin < ::Proxy::Plugin
    plugin "qpid_dispatch", ::QpidProxy::VERSION

    http_rackup_path File.expand_path("qpid_dispatch_http_config.ru", File.expand_path("../", __FILE__))
    https_rackup_path File.expand_path("qpid_dispatch_http_config.ru", File.expand_path("../", __FILE__))
  end
end
