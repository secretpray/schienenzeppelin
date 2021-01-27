#!/usr/bin/env ruby
require 'pathname'

source_path = (Pathname.new(__FILE__).dirname + '../lib').expand_path
$LOAD_PATH << source_path

require 'schienenzeppelin'

if ARGV.empty?
  puts "Please provide a path for the new application"
  puts
  puts "See --help for more info"
  exit 0
elsif %w[-v --version].include? ARGV[0]
  puts Schienenzeppelin::VERSION
  exit 0
end

templates_root = File.expand_path(File.join("..", "templates"), File.dirname(__FILE__))
Schienenzeppelin::AppGenerator.source_root templates_root
Schienenzeppelin::AppGenerator.source_paths << Rails::Generators::AppGenerator.source_root << templates_root

Schienenzeppelin::AppGenerator.start
