
SUBDIRS := arithmetic control machinecode

.PHONY: clean all
all clean: 
	for dir in $(SUBDIRS); do \
		$(MAKE) -C $$dir -f Makefile $@; \
	done
