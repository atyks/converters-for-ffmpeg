# FFmpegを使って動画を変換するためのバッチ集

## 事前準備
FFmpegをダウンロードしてきて、ffmpeg-master-latest-win64-gpl配下に展開
	https://github.com/BtbN/FFmpeg-Builds/releases
	ffmpeg-master-latest-win64-gpl.zip

## m3u8+ts形式のファイルへ変換する
toTs.batに変換したい動画ファイルをD&D。
動画ファイルのある場所にoutputディレクトリが生成され、その中にm3u8+ts形式のファイルが書き出される

toTs.bat中の「SEPARATE_SEC」は、分割する秒数。とりあえず9秒を指定しているが、必要に応じて書き換えること

注意点
- outputディレクトリは実行のたびに削除、新規作成されるので注意
- 別の場所にある動画をD&Dした場合は動かない可能性がある

## 動画から音声だけを抜き出す
toMp3.batに変換したい動画ファイルをD&D。
動画ファイルのある場所にmp3形式のファイルが書き出される