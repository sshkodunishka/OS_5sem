@echo off
echo -- Строка параметров %1 %2 %3
echo -- Параметр 1: %1
echo -- Параметр 2: %2
echo -- Параметр 3: %3
set /a plus = %1 + %2
set /a mult = %1 * %2
set /a del = %3 / %2
set /a minus = %2 - %1
set /a formula = (%2-%1) * (%1-%2)
echo -- %1 + %2 = %plus%
echo -- %1 * %2 = %mult%
echo -- %3 / %2 = %del%
echo -- %2 - %1 = %minus%
echo -- (%2-%1) * (%1-%2) = %formula%