# This module is to install ldapserver on the target node

class ldapserver { 
	package { 'openldap-servers':
		  ensure => present,
		}
	service { 'slapd':
		  ensure => running,
		require => package['openldap-servers'],
                }
	file { '/etc/openldap/slapd.conf':
		ensure => file,
		owner => 'root',
		group => 'root',
		mode => '644',
		content => template("ldapserver/slapd.conf"),
		require => package['openldap-servers'],
		}
	file { '/var/lib/ldap/DB_CONFIG':
		ensure => file,
		owner => 'ldap',
	        group => 'ldap',	
		mode => '644',
		content => template("ldapserver/DB_CONFIG"),
		require => package['openldap-servers'],
		}
	file { '/var/lib/ldap':
		ensure => directory,
                owner => 'ldap',
                group => 'ldap',
                mode => '600',
                require => package['openldap-servers'],
                }
		}
