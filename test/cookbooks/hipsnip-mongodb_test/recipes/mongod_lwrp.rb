#
# Cookbook Name:: hipsnip-mongodb-test
# Recipe:: mongod_lwrp
#
# Copyright 2013, HipSnip Ltd.
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

# Set up a single mongod instance using the mongod recipe

node.set['mongodb']['small_files'] = true

include_recipe "hipsnip-mongodb_test::default"

hipsnip_mongodb_mongod "primary" do
  bind_ip "127.0.0.1"
  port 27018 # non-default port
end