# = Class to manage dependencies
class nginx::dependencies {
  case $::operatingsystem {
    Ubuntu,Debian: { require nginx::dependencies::ubuntu }
	Centos,RedHat: { require nginx::dependencies::centos }
    default: { notify { 'not-available': message => "This OS is not supported" } }
  }
}
