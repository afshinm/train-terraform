libdir = File.dirname(__FILE__)
$LOAD_PATH.unshift(libdir) unless $LOAD_PATH.include?(libdir)

require 'train-terraform/version'
require 'train-terraform/transport'
require 'train-terraform/platform'
require 'train-terraform/connection'
