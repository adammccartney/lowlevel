SHELL := /usr/bin/bash

CC := gcc
CFLAGS := -Wall -g 
AR = ar

BUILD_DIR := build
SOURCE_DIR := src
LIB_DIR := lib

SOURCES := $(wildcard $(SOURCE_DIR)/*.c)
HEADERS := $(wildcard $(SOURCE_DIR)/*.h)
OBJECTS := $(addprefix $(BUILD_DIR)/, $(notdir $(SOURCES:.c=.o)))

EXECUTABLES := $(BUILD_DIR)/arraysum \
			   $(BUILD_DIR)/B2T \
			   $(BUILD_DIR)/div16 \
			   $(BUILD_DIR)/prec \
			   $(BUILD_DIR)/reveng \
			   $(BUILD_DIR)/shifts \
			   $(BUILD_DIR)/strlonger \
			   $(BUILD_DIR)/taddok \
			   $(BUILD_DIR)/tsubok 

LIBRARIES := $(LIB_DIR)/libarithmetic.a

all: $(EXECUTABLES) $(LIBRARIES)

# Link the executables 
$(BUILD_DIR)/arraysum: $(BUILD_DIR)/arraysum.o
$(BUILD_DIR)/B2T: $(BUILD_DIR)/B2T.o
$(BUILD_DIR)/div16: $(BUILD_DIR)/div16.o
$(BUILD_DIR)/prec: $(BUILD_DIR)/prec.o
$(BUILD_DIR)/reveng: $(BUILD_DIR)/reveng.o
$(BUILD_DIR)/shifts: $(BUILD_DIR)/shifts.o
$(BUILD_DIR)/strlonger: $(BUILD_DIR)/strlonger.o
	@ printf "%8s %-40s %s\n" $(CC) $@ "$(CFLAGS)"
	@ mkdir -p build
	@ $(CC) $(CFLAGS) $< -o $@

$(BUILD_DIR)/taddok: $(BUILD_DIR)/taddok.o $(BUILD_DIR)/arithmetic.o
	@ printf "%8s %-40s %s\n" $(CC) $@ "$(CFLAGS)"
	@ mkdir -p build
	@ $(CC) $(CFLAGS) $(BUILD_DIR)/taddok.o $(BUILD_DIR)/arithmetic.o -o $@

$(BUILD_DIR)/tsubok: $(BUILD_DIR)/tsubok.o $(BUILD_DIR)/arithmetic.o
	@ printf "%8s %-40s %s\n" $(CC) $@ "$(CFLAGS)"
	@ mkdir -p build
	@ $(CC) $(CFLAGS) $(BUILD_DIR)/tsubok.o $(BUILD_DIR)/arithmetic.o -o $@

# Compile the object files  
$(BUILD_DIR)/%.o: $(SOURCE_DIR)/%.c $(HEADERS)
	@ printf "%8s %-40s %s\n" $(CC) $< "$(CFLAGS)"
	@ mkdir -p $(BUILD_DIR)
	@ $(CC) -c $(CFLAGS) -o $@ $<

# Make libraries
$(LIB_DIR)/libarithmetic.a: $(BUILD_DIR)/arithmetic.o
	@ printf "%8s %-40s %s\n" $(AR) r $@ $<
	@ mkdir -p $(LIB_DIR)
	@ $(AR) r $@ $<

.PHONY: default

clean:
	rm -rf build
	rm lib/libarithmetic.a
