maintainer       "Biola University"
maintainer_email "troy.ready@biola.edu"
license          "Apache 2.0"
description      "Encapsulates splunk cookbook; offers monitor configuration for Splunk forwarders"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.4.0"
depends          "splunk"
depends          "splunk_windows"
%w{redhat centos fedora debian ubuntu windows}.each do |os|
  supports os
end
