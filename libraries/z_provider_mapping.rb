# provider mappings for Chef 11

#########
# client
#########
Chef::Platform.set platform: :amazon, resource: :erlang, provider: Chef::Provider::Erlang::Package
Chef::Platform.set platform: :centos, resource: :erlang, provider: Chef::Provider::Erlang::Package
Chef::Platform.set platform: :debian, resource: :erlang, provider: Chef::Provider::Erlang::Package
Chef::Platform.set platform: :fedora, resource: :erlang, provider: Chef::Provider::Erlang::Package
#Chef::Platform.set platform: :mac_os_x, resource: :erlang, provider: Chef::Provider::Erlang::Osx
Chef::Platform.set platform: :redhat, resource: :erlang, provider: Chef::Provider::Erlang::Package
Chef::Platform.set platform: :scientific, resource: :erlang, provider: Chef::Provider::Erlang::Package
Chef::Platform.set platform: :smartos, resource: :erlang, provider: Chef::Provider::Erlang::Package
Chef::Platform.set platform: :solaris2, resource: :erlang, provider: Chef::Provider::Erlang::Package
Chef::Platform.set platform: :suse, resource: :erlang, provider: Chef::Provider::Erlang::Package
Chef::Platform.set platform: :ubuntu, resource: :erlang, provider: Chef::Provider::Erlang::Package
Chef::Platform.set platform: :windows, resource: :erlang, provider: Chef::Provider::Erlang::Windows
