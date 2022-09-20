@echo off
echo - ��ப� ��ࠬ��஢: %1 %2
echo - �����: %1
echo - ����: %2

if "%1" EQU "" goto help
if "%1" EQU "ᮧ����" goto create
if "%1" EQU "㤠����" goto delete
if "%1" NEQ "㤠����" goto error
if "%1" NEQ "ᮧ����" goto error

:create
if "%2" NEQ "" goto createFile
echo - �� ������ ��� 䠩��
goto exit

:createFile
if exist %2 (goto existFile)
copy NUL %2
echo - ���� %2 ᮧ���
goto exit

:existFile
echo - ���� %2 㦥 �������
goto exit

:delete
if "%2" NEQ "" goto deleteFile
echo - �� ������ ��� 䠩��
goto exit

:deleteFile
if not exist %2 (goto notFound)
del %2
echo - ���� %2 㤠��
goto exit

:notFound
echo - ���� %2 �� ������
goto exit

:help 
echo - %0 mode file
echo - mode = {ᮧ����, 㤠����}
echo - file = filename
goto exit

:error
echo -������ ०��
goto exit

:exit