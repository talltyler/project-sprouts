require "rubygems"
require "bundler"

Bundler.require :default, :development

# These require statments *must* be in this order:
# http://bit.ly/bCC0Ew
# Somewhat surprised they're not being required by Bundler...
require 'shoulda'
require 'mocha'

require File.dirname(__FILE__) + '/../../lib/sprout'
$:.unshift File.dirname(__FILE__) + '/../'
#$:.unshift File.dirname(__FILE__)

require 'unit/fake_process_runner'
require 'unit/fake_tool'
require 'unit/sprout_test_case'

# Prevent log messages from interrupting the test output:
Sprout::Log.debug = true
Sprout::ProgressBar.debug = true

