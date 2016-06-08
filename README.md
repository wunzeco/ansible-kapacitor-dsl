kapacitor
==============

Ansible role to define and enable Kapacitor tasks. It uses `kapacitor` CLI 
program for calling the Kapacitor API.

This role requires that Kapacitor is installed and running locally on the host. 
For this, you may be interested in [wunzeco.kapacitor] role. Other TICK stack 
roles that may be of interest:
- [wunzeco.telegraf]
- [wunzeco.influxdb]
- [wunzeco.chronograf]
- [wunzeco.kapacitor]


## Example

```
- hosts: myhost

  vars:
    
  roles:
    - wunzeco.kapacitor
    - wunzeco.kapacitor-extra
```


## Dependencies

none


[wunzeco.telegraf]: https://github.com/wunzeco/ansible-telegraf
[wunzeco.influxdb]: https://github.com/wunzeco/ansible-influxdb
[wunzeco.chronograf]: https://github.com/wunzeco/ansible-chronograf
[wunzeco.kapacitor]: https://github.com/wunzeco/ansible-kapacitor
