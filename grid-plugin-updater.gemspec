# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "grid-plugin-updater/version"

Gem::Specification.new do |s|
  s.name        = "grid-plugin-updater"
  s.version     = Grid::Plugin::Updater::VERSION
  s.authors     = ["myobie"]
  s.email       = ["nathan@myobie.com"]
  s.homepage    = ""
  s.summary     = %q{Update grid every 5 minutes}
  s.description = %q{Keeping your grids updated}

  s.rubyforge_project = "grid-plugin-updater"

  s.post_install_message = "* To have grid update every 5 minutes, load this plist into launchd:
  launchctl load -w #{File.expand_path(File.dirname(__FILE__))}/data/com.grid.updater.plist"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  s.add_runtime_dependency "gridcli"
end
