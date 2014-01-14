ldapserver

This is the ldapserver module.

License
-------
OPENSOURCE (GPL)



Contact
-------
mr.vrbabu@hotmail.com

Support
-------
mr.vrbabu@hotmail.com

Note 
----
This module can be used to install and configure openldap server on a rhel5/rhel6 hosts. 
Edit the slapd.conf file in templates directory to hold your customised passwd at 'rootpw' using 'slappasswd' command
Once the module is installed run the 'ldapadd' with ldif files to build base dn and add OUs on the ldap server
The 'base.ldif' and 'add_ous.ldif' and available at the test directory within this module.

--------------------------------------------------------------------------------------------------------------

Please log tickets and issues at our [Projects site](http://projects.example.com)
