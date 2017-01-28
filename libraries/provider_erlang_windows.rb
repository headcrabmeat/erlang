class Chef
  class Provider
    class Erlang
      class Windows < Chef::Provider::Erlang
        include Chef::DSL::IncludeRecipe

        provides(:erlang) if defined?(provides)
        action :install do

          install_dir = new_resource.windows_install_dir
          Chef::Log.info('install_dir is: '+install_dir)

          package new_resource.windows_display_name do
            action :install
            source new_resource.windows_package_url
            checksum new_resource.windows_package_checksum
            options "/S /D=#{install_dir}"
            installer_type :nsis
          end

          # windows_path resource doesn't change the current process
          # environment variables. Therefore, git won't actually be on the PATH
          # until the next chef-client run
          erl_bin = install_dir+'\\bin'
          ruby_block 'Add Erlang Path' do
            block do
              ENV['PATH'] = erl_bin+';'+ENV['PATH']
            end
            not_if { ENV['PATH'] =~ /erl_bin/ }
            action :nothing
          end

          windows_path erl_bin do
            notifies :create, 'ruby_block[Add Erlang Path]', :immediately
            action :add
          end

        end

        action :delete do
        end
      end
    end
  end
end
