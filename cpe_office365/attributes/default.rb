#
# Cookbook Name:: cpe_office365
# Attributes:: default
#
# vim: syntax=ruby:expandtab:shiftwidth=2:softtabstop=2:tabstop=2
#
# Copyright (c) 2019-present, Uber Technologies, Inc.
# All rights reserved.
#
# This source code is licensed under the Apache 2.0 license found in the
# LICENSE file in the root directory of this source tree.
#

default['cpe_office365'] = {
  'install' => false,
  'uninstall' => false,
  'version' => nil,
  'bin' => {
    'bin_name' => nil,
    'checksum' => nil,
  },
  'config' => {
    'requested_apps' => [],
    'excluded_apps' => [],
    'conf_name' => nil,
    'migratearch' => nil,
    'channel' => nil,
    'officeclientedition' => nil,
    'product_id' => nil,
    'sharedcomputerlicensing' => nil,
    'sclcacheoverride' => nil,
    'autoactivate' => nil,
    'forceappshutdown' => nil,
    'devicebasedlicensing' => nil,
    'updates_enabled' => nil,
    'company' => nil,
    'display_level' => nil,
    'accepteula' => nil,
    'remove_all' => nil,
  },
  'catalog' => [
    'access',
    'bing',
    'excel',
    'groove',
    'lync',
    'onenote',
    'oneDrive',
    'outlook',
    'powerpoint',
    'publisher',
    'teams',
    'word',
  ],
}
