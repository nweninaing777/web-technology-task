# データを受け取り、返却するCGIプログラムの起動
require 'cgi'
cgi = CGI.new
cgi.out("type" => "text/html", "charset" => "UTF-8") {
  # 情報の目印とした"goya"のデータを cgi['goya']と言う記述で取り出し、ローカル変数に代入する
  get_one = cgi['goya_one']
  # HTMLでレスポンスを返却する
  "<html>
    <body>
      <p>「自家消費」以外のゴーヤの大きさと売った相手の情報は下記になります</p>
      文字列：#{get_one}
    </body>
  </html>"
}
