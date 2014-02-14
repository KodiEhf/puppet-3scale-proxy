# = Class to manage ubuntu and debian packages
class nginx::dependencies::centos {
  if ! defined(Package['gcc']) { package { 'gcc': ensure => 'installed', provider => 'yum' } }
  if ! defined(Package['gcc-c++']) { package { 'gcc-c++': ensure => 'installed', provider => 'yum' } }
  if ! defined(Package['kernel-devel']) { package { 'kernel-devel': ensure => 'installed', provider => 'yum' } }
  if ! defined(Package['readline-devel']) { package { 'readline-devel': ensure => 'installed', provider => 'yum' } }
  if ! defined(Package['ncurses-devel']) { package { 'ncurses-devel': ensure => 'installed', provider => 'yum' } }
  if ! defined(Package['pcre']) {        package { 'pcre':        ensure => 'installed', provider => 'yum' } }
  if ! defined(Package['pcre-devel']) {    package { 'pcre-devel':    ensure => 'installed', provider => 'yum' } }
  if ! defined(Package['openssl-devel']) {      package { 'openssl-devel':      ensure => 'installed', provider => 'yum' } }
  if ! defined(Package['perl']) {            package { 'perl':            ensure => 'installed', provider => 'yum' } }
}
