require 'smart_proxy_qpid/qpid_dispatch_api'

map "/qpid_dispatch" do
  run QpidDispatchProxy::Api
end
