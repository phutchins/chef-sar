name 'sar'
maintainer 'Philip Hutchins'
maintainer_email 'flipture@gmail.com'
license 'Apache 2.0'
description 'Installs/Configures sar'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.0.2'

%w(ubuntu debian redhat centos scientific amazon fedora).each do |os|
  supports os
end
