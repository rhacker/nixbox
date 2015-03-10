NixOS boxes for Vagrant
=======================

[NixOS](http://nixos.org) is a linux distribution based on a purely functional
package manager. This project builds .box images that can be used by
[vagrant](http://vagrantup.com), the VM manager.

Status
------

stable

Install
-------

The prebuilt box is not available yet

Building the images
-------------------

First install [packer](http://packer.io) and
[virtualbox](https://www.virtualbox.org/)

Then:

```
make nixbox64-virtualbox.box
```

The .box image is now ready to go and you can use it in vagrant:

```
vagrant box add nixbox64 nixbox64-virtualbox.box
```

License
-------

Copyright 2014 under the MIT
