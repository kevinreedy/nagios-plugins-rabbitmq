#!/usr/bin/env perl
use Module::Build;

my $build = Module::Build->new
  (
   dist_name => "nagios-plugins-rabbitmq",
   dist_version => "1.0.3",
   dist_author => 'James Casey (jamesc.000@gmail.com)',
   dist_abstract => 'Nagios checks for RabbitMQ using the management interface',
   installdirs => 'site',
   script_files => 'scripts',
   license => 'apache',

   requires => {
                "JSON" => "2.12",
                "LWP::UserAgent" => 0,
                "URI" => "1.35",
                "Pod::Usage" => 0,
                "Getopt::Long" => 0,
               },
   recommends => {
                   "Nagios::Plugin" => "0.27",
                  },
   configure_requires => {
                      "Module::Build" => 0,
                     },
   build_requires => {
                      "Module::Build" => 0,
                     },
   keywords => [  "RabbitMQ", "Management", "Nagios" ],
  );

$build->create_build_script;
