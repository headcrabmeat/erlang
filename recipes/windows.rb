#
# Cookbook:: erlang
# Recipe:: source
# Author:: Joe Williams <joe@joetify.com>
# Author:: Matt Ray <matt@chef.io>
# Author:: Hector Castro <hector@basho.com>
#
# Copyright:: 2008-2016, Joe Williams
# Copyright:: 2011-2016, Chef Software Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

erlang 'default' do
  windows_display_name node['erlang']['display_name']
  windows_package_url  node['erlang']['url']
  windows_package_checksum node['erlang']['checksum']
  windows_install_dir node['erlang']['install_dir']
  action :install
end
