# アプリケーション名
patients-management-second<br><br>

# アプリケーション概要
電子カルテを導入していない病院にて、患者情報を病院全体で把握・管理できる。
また、他院からの転院調整、治療後の他院・他施設への退院調整の中で行われる職員同士の意見交換を容易に行うことができる。<br><br>

# URL
https://patients-management-second.herokuapp.com/<br><br>

# テスト用アカウント
Basic認証ID：admin
Basic認証パスワード：2222<br><br>

# 利用方法
## 患者登録
1.トップページ(一覧ページ)のヘッダーから新規患者登録を行う<br>
2.患者の情報(患者ID、患者氏名、患者氏名(カタカナ)、生年月日、年齢、性別、住所、主病名、主治医、病棟、キーパーソン続柄、家族背景・その他、入院前施設、担当者、登録時の状況、転院調整の有無、入院日)を入力し登録する
## 患者情報表示
1.トップページで現在入院中の患者一覧を表示する<br>
　(タブにて病棟毎の表示も可能)<br>
2.入院前患者一覧ページで、転院調整中などの<br>　入院前の患者一覧を表示する<br>
3.退院患者一覧ページで退院後の患者一覧を表示する
　(タブにて病棟毎の表示も可能)
## 患者情報詳細表示、職員同士の意見交換を行う
1.患者情報の詳細部分を表示する
2.転院調整及び退院調整における職員同士の意見交換を行う<br><br>

# 洗い出した要件
[要件を定義したシート](https://docs.google.com/spreadsheets/d/1emKkmZMdMFXr3sIaoY6XuRCfxHozzYJckAtndiPFlCE/edit#gid=982722306)<br><br>

# 実装した機能についての画像やGIFおよびその説明
[![Image from Gyazo](https://i.gyazo.com/e461f250d9e4f89904de7d2705035665.png)](https://gyazo.com/e461f250d9e4f89904de7d2705035665)(https://gyazo.com/50d1d645a6a995a321fa32ac390ced31)<br>
トップページにて患者一覧を表示する<br>
全ページ共通のヘッダーを作成し、どのページからでも各種一覧ページ及び患者登録画面に遷移することができる<br><br>

[![Image from Gyazo](https://i.gyazo.com/56c571650cd568db233b36321ebaa969.png)](https://gyazo.com/56c571650cd568db233b36321ebaa969)
[![Image from Gyazo](https://i.gyazo.com/c2a97dd3d002f513366d64cd667e89cd.png)](https://gyazo.com/c2a97dd3d002f513366d64cd667e89cd)
患者詳細ページを表示すると、入院前(転院)の調整及び退院前の調整が表示され、職員同士がこのページでやりとりすることができる<br>
※転院調整が行われていない患者には、その部分は表示されない仕様となっている<br>
ページ下部に患者情報編集ページへ移動、患者情報を削除のボタンを作成<br>
患者情報を削除するボタンをクリックすると、アラートが表示される<br><br>

[![Image from Gyazo](https://i.gyazo.com/08cb4251087de2bbdaf300b9bdd21a1b.png)](https://gyazo.com/08cb4251087de2bbdaf300b9bdd21a1b)
[![Image from Gyazo](https://i.gyazo.com/5c2ab5ded26bbe5e51f5f57217d5a2ed.png)](https://gyazo.com/5c2ab5ded26bbe5e51f5f57217d5a2ed)
患者情報編集ページでは、データの編集・上書き保存が行える<br><br>

# 実装予定の機能
今後、ユーザーが医師または調整担当者の場合、担当患者一覧をマイページに実装予定<br><br>

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/06bcd62b6432140e03039eed6bcbbcfc.png)](https://gyazo.com/06bcd62b6432140e03039eed6bcbbcfc)<br><br>

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/06bcd62b6432140e03039eed6bcbbcfc.png)](https://gyazo.com/06bcd62b6432140e03039eed6bcbbcfc)<br><br>

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/69dd18eadeff059d1ba227d4040b0167.png)](https://gyazo.com/69dd18eadeff059d1ba227d4040b0167)<br><br>

# 開発環境
・フロントエンド
・バックエンド
・インフラ
・テキストエディタ<br><br>

# ローカルでの動作方法
以下のコマンドを順に実行
% git clone https://github.com/murakami-m/patients-management-second
% cd patients-management-second
% bundle install
% yarn install<br><br>

# 工夫したポイント
ペルソナである、コンピューターリテラシーが低い人でもシンプルでわかりやすく、そして使いやすいよう設計しました。<br>
また字の大きさもペルソナに合わせ大きく設定しました。<br>
患者詳細画面にて、テーブルの情報にて条件分岐し。転院調整情報の表示の有無を設定しました。
