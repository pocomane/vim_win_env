:
@echo off
call %~dp0little_unix_for_windows\env.bat

start %MSYSROOT%\usr\bin\mintty.exe /usr/bin/busybox.exe ash -l %*

