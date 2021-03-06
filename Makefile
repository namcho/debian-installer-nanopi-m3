all:
	$(MAKE) clean
	cd ubootenv && $(MAKE)
	cd ubootimg && $(MAKE)
	cd kernel-di && $(MAKE) deb
	cd nanopi-bootable && $(MAKE) deb
	cd nanopi-wifi && $(MAKE) deb
	cd nanopi-bluetooth && $(MAKE) deb
	cd installer && $(MAKE) scratch
	cd image && $(MAKE)

clean:
	cd ubootenv && $(MAKE) clean
	cd ubootimg && $(MAKE) clean
	cd kernel-di && $(MAKE) clean
	cd nanopi-bootable && $(MAKE) clean
	cd nanopi-wifi && $(MAKE) clean
	cd nanopi-bluetooth && $(MAKE) clean
	cd installer && $(MAKE) clean
	cd image && $(MAKE) clean
	rm -f *.udeb
