#!/usr/bin/ruby
#
# Mobile Provision Display
# ------------------------
# A simple script to pretty print some content of mobile provisioning profiles 
# installed on the local machine.
#
# (c) 2014 Massimiliano Bigatti (@mbigatti, http://bigatti.it)
#
#
require 'plist'
require 'pathname'

verbose = false
if ARGV.length != 0 && ARGV[0] == '-v'
	verbose = true
end

tmpdir = ENV['TMPDIR']
temp_file_name = tmpdir + "/mpdisplay-tmp.xml"
temp_file = Pathname.new(temp_file_name)

profiles_path = ENV['HOME'] + "/Library/MobileDevice/Provisioning Profiles/"

#
# Enumerate provisioning profiles on local machine
#
Dir.foreach(profiles_path) do |item|
	next if item == '.' or item == '..' or !item.end_with?('.mobileprovision')

	#
	# remove temp file if it exists
	#
	if temp_file.exist?
		temp_file.delete
	end
	
	#
	# parse mobile provisioning file
	#
	cmd = 'security cms -D -i "' + profiles_path + item + '" > ' + temp_file_name
	result = `#{cmd}`
	next if !temp_file.exist? || !temp_file.size?
	
	#
	# parse XML
	#
	result = Plist::parse_xml(temp_file_name)
	devices = result['ProvisionedDevices']

	devices_count = 0
	unless devices.nil?
		devices_count = devices.length
	end 

	#
	# dump file contents
	#
	print item + " - " + result['AppIDName'] + " - expires on " + result['ExpirationDate'].strftime("%Y/%m/%d") + " - total devices (" + devices_count.to_s + ")\n"

	next if !verbose
	unless devices.nil?
		count = 0

		devices.each { |device|
			print "  > "
			print device

			count = count + 1
			if count == 3
				print "\n"
				count = 0
			end
		}
	end

	print "\n\n"
end
