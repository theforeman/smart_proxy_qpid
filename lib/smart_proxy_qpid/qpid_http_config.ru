require 'smart_proxy_qpid/qpid_api'

map "/qpid" do
  run QpidProxy::Api
end
