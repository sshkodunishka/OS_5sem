@echo off
echo -- Строка параметров %1 %2 %3
echo -- Параметр 1: %1
echo -- Параметр 2: %2
echo -- Параметр 3: %3
set /a result = %1 %3 %2
echo -- Результат = %result%
