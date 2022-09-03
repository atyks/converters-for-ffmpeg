rem  動画から音声だけを抜き出す


rem --- ここから下は触らない ---
rem 拡張子を除いたファイル名を取得
set NEWFILENAME=%~n1

rem 変換処理を実行
"%~dp0\ffmpeg-master-latest-win64-gpl\bin\ffmpeg.exe" -i "%~nx1" -vn -f mp3 "%~p1%NEWFILENAME%.mp3"
