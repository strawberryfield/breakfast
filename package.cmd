rem inform paths
set INFORM7_PATH=C:\Program Files\Inform\
set Inform7="%INFORM7_PATH%Compilers\Inform7"
set Inform6="%INFORM7_PATH%Compilers\Inform6"
set InBlorb="%INFORM7_PATH%Compilers\InBlorb"
set INTERNAL="%INFORM7_PATH%Internal"

set DOC_ROOT=C:
set DOC_PATH=\Users\rober\Documents\Inform
set EXTERNAL="%DOC_ROOT%%DOC_PATH%"

rem project paths
set PROJECT_HOME=breakfast
set NAME=Breakfast in the Dolomites
set RAR="C:\Program Files\WinRAR\WinRAR.exe"
set COMMENT=zipcomment.txt
set PROJECT_PATH=%DOC_ROOT%%DOC_PATH%\Projects\%PROJECT_HOME%\%NAME%.inform
set BUILD_DIR=%PROJECT_PATH%\Build\
set RELEASE_DIR=%DOC_ROOT%%DOC_PATH%\Projects\%PROJECT_HOME%\%NAME%.materials\Release\
set BLURB="%PROJECT_PATH%\Release.blurb"
set COPYRIGHT="copyright (c) 2024 Roberto Ceccarelli - The Strawberry Field"

rem project home
%DOC_ROOT%
cd "%DOC_PATH%\%PROJECT_HOME%"

rem build project
%Inform7% -release -internal %INTERNAL% -external %EXTERNAL% -project "%PROJECT_PATH%" -format=Inform6/32d
%Inform6% -E2w~S~DG "%BUILD_DIR%auto.inf" "%BUILD_DIR%output.ulx"
echo copyright %COPYRIGHT% >> %BLURB%
%InBlorb% %BLURB% "%RELEASE_DIR%%NAME%.gblorb"

rem packaging
cd "%NAME%.materials"
%RAR% a -afzip -ep -m5 -z%COMMENT% "..\bin\%NAME%" release
cd ..
