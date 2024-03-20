# CC ?= gcc
# CC ?= /usr/bin/riscv64-linux-gnu-gcc
CC ?= /opt/sc-dt/riscv-gcc/bin/riscv64-unknown-linux-gnu-gcc
# QEMU_USER ?= qemu-x86_64
# QEMU_USER ?= /usr/bin/qemu-riscv64
QEMU_USER ?= /opt/sc-dt/tools/bin/qemu-riscv64

CFLAGS ?= -static
INPUT_ARGS ?= 2 3

BUILD_DIR := build
.DEFAULT_GOAL := main

.PHONY: _build_dir main clean

_build_dir:
	@mkdir -p ${BUILD_DIR}

main: main.c _build_dir
	${CC} ${CFLAGS} main.c -o ${BUILD_DIR}/main.elf

build: main

run: main
	${BUILD_DIR}/main.elf ${INPUT_ARGS}

run-qemu: main
	${QEMU_USER} ${BUILD_DIR}/main.elf ${INPUT_ARGS}

clean:
	rm -rf ${BUILD_DIR}
