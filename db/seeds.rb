User.create!([
  {first_name: "Okan", last_name: "Binli", address: "", telephone: "", country: "", mail: "", birth_date: "", email: "okanb3@gmail.com", encrypted_password: "$2a$10$hqlb2W4Rwa6N9wHr0sf.f.ByT.w6qkSh85LdlEvKSCgjztAZbXB4m", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: "2015-12-17 18:40:44", sign_in_count: 7, current_sign_in_at: "2015-12-17 19:38:11", last_sign_in_at: "2015-12-17 18:40:44", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", is_admin: true}
])
Author.create!([
  {name: "Frederich William Nietzsche", slug: "frederich-william-nietzsche"},
  {name: "Antoine de Saint-Exupéry", slug: "antoine-de-saint-exupery"},
  {name: "Dmitry Glukhovsky", slug: "dmitry-glukhovsky"},
  {name: "Paul Coelho", slug: "paul-coelho"},
  {name: "Richard Bach", slug: "richard-bach"},
  {name: "Suzanne Collins", slug: "suzanne-collins"}
])
Author::HABTM_Books.create!([
  {author_id: 3, book_id: 2},
  {author_id: 1, book_id: 3},
  {author_id: 4, book_id: 4}
])
Book.create!([
  {name: "Le Petit Prince", author_id: 2, page_num: 234, content: "\"Hoşça git,\" dedi tilki. \"Vereceğim sır çok basit: İnsan ancak yüreğiyle baktığı zaman doğruyu görebilir. Gerçeğin mayası gözle görülmez.\" Küçük Prens unutmamak için tekrarladı: \"Gerçeğin mayası gözle görülmez.\"\r\n(Tanıtım Bülteninden)", published_date: "2015", category_id: 1, publisher: "Can Çocuk Yayınları", language: "TR", counter: 0, stock: 25, cost: 7.0, avatar_file_name: "45096f2d-8c14-4caf-a83d-6e192abc0c8d.jpg", avatar_content_type: "image/jpeg", avatar_file_size: 25217, avatar_updated_at: "2015-12-16 01:00:12", slug: "le-petit-prince"},
  {name: "Metro 2033", author_id: 3, page_num: 600, content: "Yıl 2033... Nükleer savaş sonrası enkaz haline gelen dünyada insan soyu neredeyse tükenmiş, radyasyon yüzünden kentler yaşanamaz halde... Hayatta kalan birkaç bin kişi yeraltına, dünyanın en büyük nükleer sığınağı olan Moskova Metrosu'na sığınıyor. Burası insanoğlunun son kalesi.\r\n\r\nYeraltındakiler için en büyük tehlike Karadelililer. İstasyonlar mini devletlere bölünmüş. İdealler, dinler, temiz su gibi nedenlerle bir araya gelmiş halklar. Duygular yerini içgüdülere bırakmış. Tek bir amaç var: Ne pahasına olursa olsun hayatta kalmak.\r\n\r\nGenç Artyom'a, yaklaşmakta olan karanlık tehlikeye karsı halkı uyarmak için Metro'nun kalbi, \"Polis\" istasyonuna gitme görevi verilir. Metro'nun kaderi belki de tüm insanlığın kaderi Artyom'un elindedir artık...\r\n(Tanıtım Bülteninden)", published_date: "2015", category_id: 2, publisher: "Panama Yayıncılık", language: "TR", counter: 3, stock: 25, cost: 25.5, avatar_file_name: "9daeeb4b-0de3-429e-93c6-3199d4ca5a05.jpg", avatar_content_type: "image/jpeg", avatar_file_size: 35885, avatar_updated_at: "2015-12-16 01:00:12", slug: "metro-2033"},
  {name: "Ve Böyle Buyurdu Zerdüşt", author_id: 1, page_num: 363, content: "Filozofa göre alemin sonu yoktur, oysa bu alemi meydana getiren ögeler sınırlı sayıdadır; dolayısıyla bu sınırlı sayıdaki ögelerin, alemi her an yeniden meydana getiren bileşimleri de sınırlı sayıda olmak zorundadır; demek ki, yaşanan belli bir an, ileride kaçınılmaz şekilde ve tekrar tekrar gelecektir. Nietzsche için önemli olan, bu anın tekrarı değil, bu ana eşlik eden \"diyonisiosumsu\" sevincin tekrarıdır; çünkü alemin bu sonsuz dönüşü, bize bu dönüşü bildiren ve bir edebiyat karakteri taşıyan bu an sayesinde anlam kazanır.\r\n", published_date: "2005", category_id: 3, publisher: "Gün Yayıncılık", language: "TR", counter: 33, stock: 25, cost: 13.14, avatar_file_name: "boyle_buyurdu_zerdust.jpg", avatar_content_type: "image/jpeg", avatar_file_size: 1925570, avatar_updated_at: "2015-12-16 01:00:12", slug: "ve-boyle-buyurdu-zerdust"},
  {name: "Simyacı", author_id: 4, page_num: 166, content: "Simyacı, dünyaca ünlü Brezilyalı yazar Paulo Coelho'nun üçüncü romanı. 1996 yılından bu yana Türkiye'de de çok okundu, çok sevildi, çok övüldü bu kitap. Bir büyük Doğu klasiği olan Mevlâna'nın ünlü Mesnevî'sinde yer alan bir küçük öyküden yola çıkarak yazılan bu roman, yüreğinde çocukluğunun çırpınışlarını taşıyan okurlar için bir \"klasik\" yapıt haline geldi.\r\n\r\nSimyacı, İspanya'dan kalkıp Mısır piramitlerinin eteklerinde hazinesini aramaya giden Endülüslü çoban Santiago'nun masalsı yaşamının öyküsü. Ama aynı zamanda bir \"nasihatnâme\"; \"Yazgına nasıl egemen olacaksın? Mutluluğunu nasıl kuracaksın?\" gibi sorulara yanıt arayan bir yaşam ve ahlak kılavuzu. Mistik bir peri masalına benzeyen bu romanın, dünyanın dört bir yanında bunca sevilmesinin gizi, kuşkusuz bu kılavuzluk niteliğinden kaynaklanıyor. \r\n\r\nSimyacı'yı okumak, herkes daha uykudayken şafak vakti uyanıp, güneşin doğuşunu izlemeye benziyor.\r\n", published_date: "2015", category_id: 4, publisher: "Can Yayınları", language: "TR", counter: 40, stock: 25, cost: 25.6, avatar_file_name: "176a66f1-a7f7-4e88-a392-3c02035d640a.jpg", avatar_content_type: "image/jpeg", avatar_file_size: 38827, avatar_updated_at: "2015-12-16 01:00:13", slug: "simyaci"},
  {name: "Martı Jonathan Livingston", author_id: 5, page_num: 142, content: "\r\nDurgun denizin minik dalgacıkları üzerinde, güneşin altın gibi ışıldadığı pırıl pırıl bir sabahtı. \r\nSahilden bir mil uzaklıkta, denizi kucaklarcasına ilerleyen bir balıkçı teknesi, martılara kahvaltı zamanının geldiğini haber veriyordu. Binlerce martı, bir lokma yiyecek için mücadeleye girişmişti bile. İşte zor bir gün daha başlıyordu. \r\n(Tanıtım Bülteninden)", published_date: "2015", category_id: 4, publisher: "Epsilon Yayınları", language: "TR", counter: 4, stock: 25, cost: 11.4, avatar_file_name: "mjl.jpg", avatar_content_type: "image/jpeg", avatar_file_size: 218450, avatar_updated_at: "2015-12-16 01:00:14", slug: "marti-jonathan-livingston"},
  {name: "Açlık Oyunları", author_id: 6, page_num: 384, content: "Etkileyici bir fantastik dünya, bitmek bilmeyen bir aksiyon Açlık Oyunları'nda bir sonraki sayfaya geçmek için sabırsızlanacaksınız.\r\n\r\nEtrafınızdaki başka herkes sabahı göremeyeceğinizden eminken vahşi bir ortamda kendi başınıza hayatta kalabilir misiniz?\r\n\r\n\"Bu kitaba o kadar bağımlı kaldım ki, yemeğe çıktığımda bile kitabı yanımda taşıdım ve masanın altında okumaya devam ettim. Hikayesi beni birçok gece uykusuz bıraktı çünkü bitirdiğimde bile, yatakta bu kitabı düşünmeye devam ettim. Açlık Oyunları kesinlikle büyüleyici.\"\r\nStephenie Meyer\r\n\r\n\"Elimden bir türlü bırakamadım… Bağımlısı oldum.\"\r\nStephen King\r\n\r\nKazanmak ün ve talih, kaybetmek ise kesin ölüm anlamına gelir.\r\nBu Oyunun Galibinin Karnı Doyacak Kaybeden İse Ölümle Tanışacak...\r\nAçlık oyunları başlasın...", published_date: "2014", category_id: 4, publisher: "Pegasus", language: "TR", counter: 103, stock: 25, cost: 19.0, avatar_file_name: "hungergamescover.jpg", avatar_content_type: "image/jpeg", avatar_file_size: 278074, avatar_updated_at: "2015-12-16 01:00:14", slug: "aclik-oyunlari"}
])
Book::HABTM_Authors.create!([
  {author_id: 3, book_id: 2},
  {author_id: 1, book_id: 3},
  {author_id: 4, book_id: 4}
])
Category.create!([
  {name: "Çocuk-Genç", slug: "cocuk-genc"},
  {name: "Bilim-Kurgu", slug: "bilim-kurgu"},
  {name: "Felsefe", slug: "felsefe"},
  {name: "Roman", slug: "roman"}
])
Comment.create!([
  {title: "", comment: "asdasdasdasd", commentable_id: 6, commentable_type: "Book", user_id: 1, role: "comments"},
  {title: "", comment: "aclik oyunları\r\n", commentable_id: 6, commentable_type: "Book", user_id: 1, role: "comments"},
  {title: "", comment: "hebebe bübübe\r\n", commentable_id: 6, commentable_type: "Book", user_id: 1, role: "comments"},
  {title: "", comment: "Test ", commentable_id: 6, commentable_type: "Book", user_id: 1, role: "comments"}
])
