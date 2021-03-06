#
# Author:: Joshua Timberman <joshua@opscode.com>
# Copyright:: Copyright (c) 2012, Opscode, Inc. <legal@opscode.com>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require File.expand_path('../support/helpers', __FILE__)

describe "logwatch::default" do
  include Helpers::Logwatch

  it "installs the perl package (via perl recipe)" do
    package("perl").must_be_installed
  end

  it "installs the logwatch package" do
    package("logwatch").must_be_installed
  end

  it "manages the logwatch configuration file" do
    file("/etc/logwatch/conf/logwatch.conf").must_match(/^# Generated by Chef for/)
  end

end
