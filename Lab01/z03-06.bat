@echo off
echo - Строка параметров: %1 %2
echo - Режим: %1
echo - Файл: %2

if "%1" EQU "" goto help
if "%1" EQU "создать" goto create
if "%1" EQU "удалить" goto delete
if "%1" NEQ "удалить" goto error
if "%1" NEQ "создать" goto error

:create
if "%2" NEQ "" goto createFile
echo - не задано имя файла
goto exit

:createFile
if exist %2 (goto existFile)
copy NUL %2
echo - Файл %2 создан
goto exit

:existFile
echo - Файл %2 уже существует
goto exit

:delete
if "%2" NEQ "" goto deleteFile
echo - не задано имя файла
goto exit

:deleteFile
if not exist %2 (goto notFound)
del %2
echo - Файл %2 удалён
goto exit

:notFound
echo - Файл %2 не найден
goto exit

:help 
echo - %0 mode file
echo - mode = {создать, удалить}
echo - file = filename
goto exit

:error
echo -неверный режим
goto exit

:exit