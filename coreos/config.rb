require 'erb'
require 'dotenv'

# Create user-data from erb template
Dotenv.load
erb = File.open(File.join(File.dirname(__FILE__), "user-data.yml.erb")) { |f| ERB.new(f.read) }
File.write(File.join(File.dirname(__FILE__), "user-data"), erb.result(binding))

# Size of the CoreOS cluster created by Vagrant
$num_instances=1

# Official CoreOS channel from which updates should be downloaded
$update_channel="stable"
