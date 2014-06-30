## Mobile Provision Display

A simple script to pretty print some content of mobile provisioning profiles installed on the local machine. Especially useful to ensure that all the devices intended are included in the profiles after an automatic update.
It uses the `security`command.

Sample output:

`A111CAB0-FA2F-4082-9840-53FD78EF1553.mobileprovision - TimerApp - expires on 2015/06/29 - total devices (5)`
`  > a49a3ffc-0035-11e4-9a26-b2227cce2b54  > a4ae1284-0035-11e4-9a26-b2227cce2b54  > a4ae1608-0035-11e4-9a26-b2227cce2b54`
`  > a4ae1874-0035-11e4-9a26-b2227cce2b54  > a4ae1af4-0035-11e4-9a26-b2227cce2b54  > 531acb0c53059f8a96ec555f8cba9ba30121029a`

## Requirements
This ruby script requires Plist gem, install it with this command:
`sudo gem install plist`

## Contact

- [Personal website](http://bigatti.it)
- [Twitter](https://twitter.com/mbigatti)

## License

### MIT License
Copyright (c) 2014 Massimiliano Bigatti (http://bigatti.it)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
