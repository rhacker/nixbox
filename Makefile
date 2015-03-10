ISO_URL_64=https://nixos.org/releases/nixos/14.12/nixos-14.12.496.5f7d374/nixos-minimal-14.12.496.5f7d374-x86_64-linux.iso
ISO_SHA256_64=933aab9ddd3d02ea669313fb31a69e631d038926b1af03624e2602a9f78389bf
GUEST_OS_64=Linux_64

all: nixbox64-template.json

nixbox64-virtualbox.box: nixbox64-template.json
	packer build $<

nixbox64-template.json: nixbox-template.json.orig Makefile
	cat $< | sed -e 's|ISO_URL|$(ISO_URL_64)|g' -e 's|ISO_SHA256|$(ISO_SHA256_64)|g' -e 's|GUEST_OS|$(GUEST_OS_64)|g' -e 's|NIXBOX|nixbox64|g' > $@

.PHONY: all
