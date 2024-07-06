rem definitions
set name=Breakfast in the Dolomites
set rar="C:\Program Files\WinRAR\WinRAR.exe"
set comment=zipcomment.txt

rem project home
c:
cd \Users\rober\Documents\Inform\Projects\breakfast

cd "%name%.materials"
%rar% a -afzip -ep -m5 -z%comment% "..\bin\%name%" release