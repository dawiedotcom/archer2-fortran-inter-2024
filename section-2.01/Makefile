SRC=example1.f90 #$(wildcard *.f90)
FC=gfortran
FCFLAGS=-g -O0
ifeq ($(FC), gfortran)
    FCFLAGS+=-Wall
endif
BUILD_DIR=build_$(FC)
TARGETS=$(patsubst %.f90, $(BUILD_DIR)/%, $(SRC))

all : $(TARGETS) 

#$(TARGETS) : $(BUILD_DIR)/% : %.f90 | $(BUILD_DIR)
#	$(FC) $(FCFLAGS) $< -o $@

$(BUILD_DIR)/example1 : my_semi_opaque_type.f90 example1.f90 | $(BUILD_DIR)
	$(FC) $(FCFLAGS) $^ -o $@

$(BUILD_DIR) :
	mkdir $@

.PHONY: clean
clean : 
	rm -f $(TARGETS) 
	rmdir $(BUILD_DIR) 
