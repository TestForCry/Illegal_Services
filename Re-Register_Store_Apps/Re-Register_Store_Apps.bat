@echo off
call "powershell.exe" -NoProfile -Command "& {Start-Process powershell.exe -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""script.ps1""' -Verb RunAs}"