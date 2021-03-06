class Genre < ApplicationRecord
  has_many :genre_contents,foreign_key: 'genre_id'
  has_many :contents, thorough: :genre_contents
  # accepts_nested_attributes_for :genre_contents,allow_destroy: true


  enum genre: {ドラマ: 0,恋愛: 1 ,ホラー: 2 , アート・コンテンポラリー: 3 ,戦争: 4 ,音楽: 5 ,ミュージカル: 6 ,スポーツ: 7 ,SF: 8 ,青春: 9 ,コメディ: 10,アクション: 11,アドベンチャー・冒険: 12,クライム: 13,ドキュメンタリー: 14,ショートフィルム・短編: 15,サスペンス: 16,ファミリー: 17,スリラー: 18,ヤクザ・任侠: 19,ファンタジー: 20,時代劇: 21,ミステリー: 22,伝記: 23,西部劇: 24,パニック: 25,オムニバス: 26,バイオレンス: 27,歴史: 28,ギャング・マフィア: 29,その他: 30}





  
end
