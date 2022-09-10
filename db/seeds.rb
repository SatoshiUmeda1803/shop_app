# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Manufacturer.create!([
  {
    name: '株式会社満点家具',
    description: 'レビュー評価日本一で知られる、世界に誇る日本の企業です。'
  },
  {
    name: '株式会社meda',
    description: '無限の可能性を秘めている新たなプラットフォーム、「メダバース」に力を入れている愛知県の企業です。地元の木材を使った家具の販売もしています。'
  },
  {
    name: 'ちきゅうファクトリー',
    description: '環境にやさしい家具、雑貨を作っている会社です。'
  },
  {
    name: 'なんでもや',
    description: 'ジャンルは関係なく、名前の通りなんでも作っている会社です。'
  },
  {
    name: 'ミトリ',
    description: '「安い家具を好きなだけ」をテーマに、お手頃価格な家具を販売しています。'
  },
  {
    name: 'ぷちとまと株式会社',
    description: 'プチプラ雑貨の販売に力を入れています。'
  },
])

Category.create!([
  {name: '大型家具'},
  {name: '寝具'},
  {name: 'キッチン用品'},
  {name: 'インテリア雑貨'},
  {name: 'テーブル、イス'},
  {name: '収納'},
])

Product.create!([
  {
    name: '新春勉強机',
    description: '勉強するのにぴったりの机です！',
    price: 9000,
    product_image: '1.jpg',
    manufacturer: Manufacturer.offset(rand(Manufacturer.count)).first,
    category_id: 5
  },
  {
    name: 'スリム本棚',
    description: 'デッドスペースを埋めることができます',
    price: 2000,
    product_image: '2.jpg',
    manufacturer: Manufacturer.offset(rand(Manufacturer.count)).first,
    category_id: 6
  },
  {
    name: 'ふんわりベッド',
    description: '体を包み込むベッド。有名アスリートも愛用。',
    price: 38000,
    product_image: '3.jpg',
    manufacturer: Manufacturer.offset(rand(Manufacturer.count)).first,
    category_id: 2
  },
  {
    name: '木ベラ',
    description: 'フライパンを傷つけにくい木でできたヘラです。',
    price: 150,
    product_image: '4.jpg',
    manufacturer: Manufacturer.offset(rand(Manufacturer.count)).first,
    category_id: 3
  },
  {
    name: 'シンプルクロック',
    description: 'どんなコーディネートにも合う、シンプルな置き時計です。',
    price: 400,
    product_image: '5.jpg',
    manufacturer: Manufacturer.offset(rand(Manufacturer.count)).first,
    category_id: 4
  },
  {
    name: 'ゲーミングチェア',
    description: 'ゲームをするのに最適な姿勢を提供するゲーミングチェア。',
    price: 32000,
    product_image: '6.jpg',
    manufacturer: Manufacturer.offset(rand(Manufacturer.count)).first,
    category_id: 5
  },
  {
    name: 'ホテルまくら',
    description: 'ホテルにあるあのふんわりとしたシンプルなまくら',
    price: 1800,
    product_image: '7.jpg',
    manufacturer: Manufacturer.offset(rand(Manufacturer.count)).first,
    category_id: 2
  },
  {
    name: 'オールシーズン掛け布団',
    description: 'これ一つでオールシーズン対応',
    price: 5800,
    product_image: '8.jpg',
    manufacturer: Manufacturer.offset(rand(Manufacturer.count)).first,
    category_id: 2
  },
  {
    name: 'ステンレス包丁',
    description: '軽くて丈夫なステンレス包丁',
    price: 280,
    product_image: '9.jpg',
    manufacturer: Manufacturer.offset(rand(Manufacturer.count)).first,
    category_id: 3
  },
  {
    name: '抗菌まな板',
    description: 'いつまでも清潔に保てる、抗菌まな板です。',
    price: 380,
    product_image: '10.jpg',
    manufacturer: Manufacturer.offset(rand(Manufacturer.count)).first,
    category_id: 3
  },
  {
    name: '３重コーティングフライパン',
    description: '焦げつきにくい、使いやすいフライパン。',
    price: 4800,
    product_image: '11.jpg',
    manufacturer: Manufacturer.offset(rand(Manufacturer.count)).first,
    category_id: 3
  },
  {
    name: 'ステンレス本棚',
    description: '丈夫でたくさん収納できるステンレス製の本棚です。',
    price: 1800,
    product_image: '12.jpg',
    manufacturer: Manufacturer.offset(rand(Manufacturer.count)).first,
    category_id: 1
  },
  {
    name: '2Weyテーブル',
    description: 'こたつとしても使えるテーブルです。',
    price: 6000,
    product_image: '13.jpg',
    manufacturer: Manufacturer.offset(rand(Manufacturer.count)).first,
    category_id: 5
  },
  {
    name: '昇降テーブル',
    description: '高さを自由自在に変えることのできるテーブル',
    price: 6800,
    product_image: '14.jpg',
    manufacturer: Manufacturer.offset(rand(Manufacturer.count)).first,
    category_id: 5
  },
  {
    name: 'シンプル照明',
    description: '部屋の隅まで明るい、シンプルな照明です。',
    price: 1800,
    product_image: '15.jpg',
    manufacturer: Manufacturer.offset(rand(Manufacturer.count)).first,
    category_id: 4
  },
  {
    name: '花粉対策カーペット',
    description: '花粉を舞い上がらせないカーペットです',
    price: 1200,
    product_image: '16.jpg',
    manufacturer: Manufacturer.offset(rand(Manufacturer.count)).first,
    category_id: 4
  },
  {
    name: '遮熱カーテン',
    description: '暑い夏でも快適に…！',
    price: 3000,
    product_image: '17.jpg',
    manufacturer: Manufacturer.offset(rand(Manufacturer.count)).first,
    category_id: 4
  },
  {
    name: '抗菌まくら',
    description: '天日干しは不要な抗菌まくらです。',
    price: 5000,
    product_image: '18.jpg',
    manufacturer: Manufacturer.offset(rand(Manufacturer.count)).first,
    category_id: 2
  },
  {
    name: '木製棚',
    description: 'あらゆる用途で使うことができる、スタンダードな木製の棚。',
    price: 3000,
    product_image: '19.jpg',
    manufacturer: Manufacturer.offset(rand(Manufacturer.count)).first,
    category_id: 6
  },
  {
    name: '木製小物入れ',
    description: 'ナチュラルな質感の小物入れです。',
    price: 380,
    product_image: '20.jpg',
    manufacturer: Manufacturer.offset(rand(Manufacturer.count)).first,
    category_id: 4
  },
])


Tag.create([
  {name: 'デザイン'},
  {name: '使い心地'},
  {name: '成分'},
  {name: '価格'},
  {name: '説明書'},
  {name: '耐久性'}
])

30.times do
  Review.create!(
    name: Faker::Name.first_name,
    comment: Faker::Company.catch_phrase,
    product_id: rand(1..20),
    price_rate: rand(1..5),
    design_rate: rand(1..5),
    quality_rate: rand(1..5)
  )
end

Review.all.each do |review|
  scores =[]
  scores.push( review.price_rate ,review.design_rate , review.quality_rate)
  review.rate = scores.sum.fdiv(scores.length).round(1)
  review.save
end

Review.all.ids.sort.each do |review_id|
  ReviewTagRelation.create(review_id: review_id, tag_id: rand(1..6))
end

Product.all.each do |product|
  product.rate = product.avg_score
  product.review_count = product.count_reviews
  product.save
end
