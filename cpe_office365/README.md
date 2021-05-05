cpe_office365 Cookbook
========================
Installs office365, and manages the config and services.

This cookbook depends on the following cookbooks

* cpe_remote

This cookbook is offered by Uber in the [IT-CPE](https://github.com/uber/IT-CPE) repository.

Attributes
----------
* node['cpe_office365']
* node['cpe_office365']['install']
* node['cpe_office365']['uninstall']
* node['cpe_office365']['catalog']
* node['cpe_office365']['config']
* node['cpe_office365']['bin']

Notes
-----
For details on configuration options, see the official microsoft documentation: https://docs.microsoft.com/en-us/deployoffice/office-deployment-tool-configuration-options

Usage
-----
Before using this cookbook to install Office365, you will need to determine how you will scope the 

By default, this cookbook will not set any configuration options, the office 365
installer will fail to install office if no configuration is specified.

A config for installing O365 Pro Plus Retail might look like this:

```ruby
node.default['cpe_office365']['install'] = true
  { # Set Custom configuration settings
    'conf_name' => 'office_365',
    'MigrateArch' => 'TRUE',
    'Channel' => 'Current',
    'OfficeClientEdition' => '64',
    'Product_ID' => 'O365ProPlusRetail',
    'SharedComputerLicensing' => '0',
    'SCLCacheOverride' => '0',
    'AUTOACTIVATE' => '0',
    'FORCEAPPSHUTDOWN' => 'TRUE',
    'DeviceBasedLicensing' => '0',
    'Updates_Enabled' => 'TRUE',
    'company' => 'UBER',
    'Display_Level' => 'None',
    'AcceptEULA' => 'TRUE',
  }.each do |k, v|
    node.default['cpe_office365']['config'][k] = v
  end
```

Note: There are several combinations of configuration options, 
test thoroughly before using in production.
