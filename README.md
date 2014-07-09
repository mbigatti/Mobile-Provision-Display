## Mobile Provision Display

A simple script to pretty print some content of mobile provisioning profiles installed on the local machine. Especially useful to ensure that all the devices intended are included in the profiles after an automatic update.
It uses the `security`command.

Sample output:

`A111CAB0-FA2F-4082-9840-53FD78EF1553.mobileprovision - TimerApp - expires on 2015/06/29 - total devices (5)`
`  > a49a3ffc-0035-11e4-9a26-b2227cce2b54  > a4ae1284-0035-11e4-9a26-b2227cce2b54  > a4ae1608-0035-11e4-9a26-b2227cce2b54`
`  > a4ae1874-0035-11e4-9a26-b2227cce2b54  > a4ae1af4-0035-11e4-9a26-b2227cce2b54  > 531acb0c53059f8a96ec555f8cba9ba30121029a`

## Requirements
This ruby script requires the *Plist* gem. Install it with this command:
`sudo gem install plist`

## Contact
[http://bigatti.it](http://bigatti.it)  
[@mbigatti](https://twitter.com/mbigatti)
