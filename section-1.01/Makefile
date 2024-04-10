SRC=$(wildcard *.f90)
FC=gfortran
BUILD_DIR=build_$(FC)
TARGETS=$(patsubst %.f90, $(BUILD_DIR)/%, $(SRC))

$(info $(SRC))
$(info $(TARGETS))

all : $(TARGETS) 

$(TARGETS) : $(BUILD_DIR)/% : %.f90 | $(BUILD_DIR)
	$(FC) $< -o $@

$(BUILD_DIR) :
	mkdir $@

.PHONY: clean
clean : 
	rm -f $(TARGETS)
