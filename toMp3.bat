rem  ���悩�特�������𔲂��o��


rem --- �������牺�͐G��Ȃ� ---
rem �g���q���������t�@�C�������擾
set NEWFILENAME=%~n1

rem �ϊ����������s
"%~dp0\ffmpeg-master-latest-win64-gpl\bin\ffmpeg.exe" -i "%~nx1" -vn -f mp3 "%~p1%NEWFILENAME%.mp3"
