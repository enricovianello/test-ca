SUBDIRS = voms-test-ca igi-test-ca-2 igi-test-ca igi-test-ca-256 igi-test-ca-email
CLEANDIRS = $(SUBDIRS:%=clean-%)

.PHONY: subdirs $(SUBDIRS)

subdirs: $(SUBDIRS)
clean: $(CLEANDIRS)
all: subdirs

$(SUBDIRS):
	$(MAKE) -C $@

$(CLEANDIRS): 
	$(MAKE) -C $(@:clean-%=%) clean
