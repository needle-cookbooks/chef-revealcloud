#
# Cookbook Name:: revealcloud
# Recipe:: default
#
# Copyright 2012, CopperEgg
#
# Redistribution Encouraged
#

# Your use api key, found on this page:
# https://app.copperegg.com/#settings/site
# REQUIRED.  Revealcloud will not work without this attribute.
default[:copperegg][:apikey] = "YOUR_USER_API_KEY"

# Comma and/or space separated list of tags to apply.  Useful for grouping systems.
# Tags are managed here:  https://app.copperegg.com/#revealcloud/tags
# Any nonexistant tags specified here will be created.
# Note: Tags may not have spaces. A space between two words will cause
#   the words to be treated as two separate tags.
# Note: Any tags already applied to a server being monitored will remain.
#   Setting tags here will only add tags.
# Optional.  This field may be left blank.
# Example: "devserver"
# Example: "database,replica,production"
default[:copperegg][:tags] = Array.new

# Label to apply to this system.  Only one may be specified.
# WARNING: labels are used in place of hostname.
#   Use only if this recipe is deployed to a single server,
#   or you desire multiple servers to have the same label
#   in the Dashboard and Alerts.
#   If this is not your desire, you may want to use a tag instead.
# Note: Do not include spaces in your label.
# Note: Leaving blank will not remove a label that is already set on a monitored system.
# Optional.  This field may be left blank.
# Example: "MySQL_Master"
default[:copperegg][:label] = ""

# Proxy to use to connect to revealcloud api from monitored server.
# Most users should leave this blank unless they know they need it.
# Optional.  This field may be left blank.
# Example: myproxy.mycorp.com:8080
default[:copperegg][:proxy] = ""

