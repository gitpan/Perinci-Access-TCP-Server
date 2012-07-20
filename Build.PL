
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Module::Build" => "0.3601",
    "Test::More" => "0.96"
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "A Riap::TCP implementation for Perl",
  "dist_author" => [
    "Steven Haryanto <stevenharyanto\@gmail.com>"
  ],
  "dist_name" => "Perinci-Access-TCP-Server",
  "dist_version" => "0.03",
  "license" => "perl",
  "module_name" => "Perinci::Access::TCP::Server",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Class::XSAccessor" => 0,
    "File::HomeDir" => 0,
    "JSON" => 0,
    "Log::Any" => 0,
    "Moo" => 0,
    "Perinci::Access" => 0,
    "Perinci::Sub::property::result_postfilter" => 0,
    "Perinci::Sub::property::timeout" => 0,
    "Riap" => "1.1.14",
    "SHARYANTO::Proc::Daemon::Prefork" => "0.05",
    "URI::Escape" => 0,
    "perl" => "5.010000"
  },
  "script_files" => [
    "bin/peri-tcpserve"
  ]
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
