# selajnux

#### Table of Contents

1. [Overview](#overview)
2. [Usage](#usage) 
3. [Reference](#reference)

## Overview

Enable selinux booleans with hiera based on audit2allow.

```puppet
1) tail -2 /var/log/audit/audit.log | audit2allow
2) Look at the output.
3) selajnux::allow:
     - httpd_can_network_relay
     - httpd_can_network_connect
```

## Usage

Puppetfile

```puppet
  mod 'salmin/selajnux', :latest
```
Puppetnode;

```puppet
  include selajnux
```

Hiera;

```puppet
  selajnux::allow:
   - httpd_can_network_connect

  selajnux::deny:
   - httpd_can_network_relay
```


## Reference

https://docs.puppet.com/puppet/latest/reference/type.html#selboolean-attributes
