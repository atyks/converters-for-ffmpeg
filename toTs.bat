rem m3u8+ts�`���̃t�@�C���֕ϊ�����

rem ��������ۂ̕b�����w��B
set SEPARATE_SEC=9

rem --- �������牺�͐G��Ȃ� ---
set NEWFILENAME=%~n1

rem �o�͐�̃f�B���N�g�����폜���č�蒼��
rd /s /q "%~p1\output"
md "%~p1\output"

rem �ϊ����������s
"%~dp0\ffmpeg-master-latest-win64-gpl\bin\ffmpeg.exe"  -i %~nx1 -c:v copy -c:a copy -f hls -hls_time %SEPARATE_SEC% -hls_playlist_type vod -hls_segment_filename %~p1/output\%NEWFILENAME%_%%4d.ts output\%NEWFILENAME%.m3u8
