rem m3u8+ts形式のファイルへ変換する

rem 分割する際の秒数を指定。
set SEPARATE_SEC=9

rem --- ここから下は触らない ---
set NEWFILENAME=%~n1

rem 出力先のディレクトリを削除して作り直す
rd /s /q "%~p1\output"
md "%~p1\output"

rem 変換処理を実行
"%~dp0\ffmpeg-master-latest-win64-gpl\bin\ffmpeg.exe"  -i %~nx1 -c:v copy -c:a copy -f hls -hls_time %SEPARATE_SEC% -hls_playlist_type vod -hls_segment_filename %~p1/output\%NEWFILENAME%_%%4d.ts output\%NEWFILENAME%.m3u8
