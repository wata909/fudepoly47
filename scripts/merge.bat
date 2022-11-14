@echo off
 
setlocal enabledelayedexpansion
 
rem for /l %%a in (1,1,47) do (
for /l %%a in (44,1,47) do (
  set num=0%%a
  set num=!num:~-2,2!
  dir .\2022_!num!\*.json
  python C:\OSGeo4W\apps\Python39\Scripts\ogrmerge.py -f FlatGeobuf -single -o .\2022_!num!\fude_2022_!num!.fgb .\2022_!num!\*.json
 )
