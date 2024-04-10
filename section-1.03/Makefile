SRC=$(wildcard example*.f90)
FC=gfortran
FCFLAGS=-g -O0
ifeq ($(FC), gfortran)
    FCFLAGS+=-Wall
endif
BUILD_DIR=build_$(FC)
TARGETS=$(patsubst %.f90, $(BUILD_DIR)/%, $(SRC))

all : $(TARGETS) 

$(BUILD_DIR)/example2 : example2.f90 external.f90 | $(BUILD_DIR)
	$(FC) $(FCFLAGS) $^ -o $@

#$(TARGETS) : $(BUILD_DIR)/% : %.f90 | $(BUILD_DIR)
#	$(FC) $(FCFLAGS) $< -o $@

$(BUILD_DIR) :
	mkdir $@

.PHONY: clean
clean : 
	rm -f $(TARGETS) 
	rmdir $(BUILD_DIR) 
