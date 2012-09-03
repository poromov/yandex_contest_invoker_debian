all:
	mkdir -p build
	cd build && cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_CXX_COMPILER=/usr/bin/g++-4.7 -DCMAKE_C_COMPILER=/usr/bin/gcc-4.7 .. && $(MAKE) $(MFLAGS)

install:
	#cd build && $(MAKE) install DESTDIR=root
	$(MAKE) -C build install $(MFLAGS)

package:
	debuild --no-tgz-check -I

install: package
	sudo dpkg -i ../yandex-contest-invoker_*_amd64.deb

java:
	cd ../../.. && mvn compile
	./jni_gen.sh

.PHONY: all package install java

