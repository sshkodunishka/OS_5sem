@echo off
echo -- ��ப� ��ࠬ��஢ %1 %2 %3
echo -- ��ࠬ��� 1: %1
echo -- ��ࠬ��� 2: %2
echo -- ��ࠬ��� 3: %3
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