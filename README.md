# Отчет по лабораторной работе 1

## Что сделано

- создан репозиторий, содержащий приложение и Makefile
- Приложение скомпилировано и запущено под Linux
- Приложение перенесено в docker
- Приложение скомпилировано и запущено под riscv64 (c помощью gcc и clang)

## Подробнее

для запуска под Linux измением в Makefile 'COMPILLER=gcc' и запускаем:
'''
make run
'''

В docker клонируем репозиторий и запускаем сначала
'''
make run-qemu
'''
(gnu toolchain)

Затем
'''
COMPILLER=/opt/sc-dt/llvm/bin/clang QEMU_USER=/opt/sc-dt/tools/bin/qemu-riscv64 CFLAGS=-static make run-qemu
'''
(llvm toolchain)
