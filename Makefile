TOP_TARGETs := all clean
DIRs := $(dir $(wildcard */Makefile))

$(TOP_TARGETs): $(DIRs)
$(DIRs):
	$(MAKE) -C $@ $(MAKECMDGOALS)

.PHONY: $(TOP_TARGETs) $(DIRs)

