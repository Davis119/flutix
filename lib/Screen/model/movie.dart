class Movie {
  final String id;
  final String title;
  final String imageUrl;
  final String description;
  final String rating;
  final String year;
  final String duration;

  Movie({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.description,
    required this.rating,
    required this.year,
    required this.duration,
  });
}

final movieList = [
  Movie(
      id: 'dr4454796',
      title: 'Avatar',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAGjVlL4J1pHweUaks0eaAoxclY89vX0vUmA&usqp=CAU',
      description:
          'Avatar: The Way of Water reaches new heights as James Cameron returns to the world of Pandora. Set a decade plus after events of the first film ',
      rating: '9.6',
      year: '2017',
      duration: '90 min'),
  Movie(
      id: 'dr55664544',
      title: 'Fast & Furious 10',
      imageUrl:
          'https://awsimages.detik.net.id/community/media/visual/2023/05/17/fast-furious-10.jpeg?w=600&q=90',
      description:
          'Fast X bercerita tentang balas dendam musuh masa lalu Dominic Torreto (Vin Diesel) yaitu Dante Rayes (Jason Mamoa).',
      rating: '9.5',
      year: '2018',
      duration: '100 min'),
  Movie(
      id: 'dr4567098',
      title: 'Dilan 1991',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/id/c/cc/Dilan_1991_Film_Poster.jpg',
      description:
          'Film yang diadaptasi dari Novel Dia Adalah Dilanku Tahun 1991 karya Pidi Baiq itu bercerita soal jalinan asamara Dilan dan Milea',
      rating: '9.0',
      year: '2018',
      duration: '130 min'),
  Movie(
      id: 'dr8799098',
      title: 'Spiderhad',
      imageUrl:
          'https://media.suara.com/pictures/original/2022/05/30/42651-spiderhead.jpg',
      description:
          ' film ini diadaptasi berdasarkan cerita pendek dystopian Escape from Spiderhead oleh George Saunders. ',
      rating: '8.0',
      year: '2019',
      duration: '200 min'),
  Movie(
      id: 'dr6806448',
      title: 'keluarga cemara',
      imageUrl:
          'https://media.suara.com/pictures/original/2022/04/15/29760-keluarga-cemara-2.jpg',
      description:
          ' Film komedidrama Dumb Money mengangkat cerita dari buku tahun 2021 berjudul The Antisocial Network karya Ben Mezrich dan mengisahkan tentang fenomena GameStop short squeeze pada Januari 2021 lalu.',
      rating: '9.7',
      year: '2018',
      duration: '140 min'),
  Movie(
      id: 'dr6105098',
      title: 'dum money',
      imageUrl:
          'https://akcdn.detik.net.id/community/media/visual/2023/08/24/film-terbaru-dumb-money-2023.jpeg?w=620&q=90',
      description:
          'Film komedidrama Dumb Money mengangkat cerita dari buku tahun 2021 berjudul The Antisocial Network karya Ben Mezrich dan mengisahkan tentang fenomena GameStop short squeeze pada Januari 2021 lalu.',
      rating: '7.1',
      year: '2019',
      duration: '144 min'),
];

final topRatedMovieList = [
  Movie(
      id: 'tt1375666',
      title: 'A Haunting in Venice',
      imageUrl:
          'https://akcdn.detik.net.id/community/media/visual/2023/08/24/film-terbaru-a-haunting-in-venice-2023.jpeg?w=620&q=90',
      description:
          ' film A Haunting in Venice akan menggebrak bioskop dengan ketegangan supernatural dan cerita detektif ikonik dari Hercule Poirot. ',
      rating: '8.8',
      year: '2016',
      duration: '120 min'),
  Movie(
      id: 'dr0468569',
      title: ' The Creator',
      imageUrl:
          'https://akcdn.detik.net.id/community/media/visual/2023/08/24/film-bioskop-the-creator-2023.jpeg?w=620&q=90',
      description:
          ' Sajian film ini akan mengangkat Ayah dan Bunda ke masa depan, di tengah peperangan antara umat manusia dan kecerdasan buatan (artificial intelligence).',
      rating: '9.0',
      year: '2009',
      duration: '120 min'),
  Movie(
      id: 'dr5816692',
      title: 'sleep call',
      imageUrl:
          'https://akcdn.detik.net.id/community/media/visual/2023/08/24/film-bioskop-sleep-call-2023.jpeg?w=620&q=90',
      description:
          'Cerita berpusat pada Dina, mantan pramugari yang terperangkap dalam dunia pinjol ilegal. ',
      rating: '9.6',
      year: '2016',
      duration: '150 min'),
  Movie(
      id: 'dr7833694',
      title: 'Kisah Tanah Jawa: Pocong Gundul',
      imageUrl:
          'https://akcdn.detik.net.id/community/media/visual/2023/08/24/film-bioskop-kisah-tanah-jawa-pocong-gundul-2023.jpeg?w=620&q=90',
      description:
          'Film ini menceritakan tokoh bernama Hao yang sering diteror oleh Pocong Gundul. Pocong Gundul ini dulunya adalah dukun sakti yang memiliki perjanjian dengan Banaspati',
      rating: '8.4',
      year: '2018',
      duration: '117 min'),
  Movie(
      id: 'dr1187043',
      title: 'di ambang kematian',
      imageUrl:
          'https://akcdn.detik.net.id/community/media/visual/2023/08/24/film-bioskop-di-ambang-kematian-2023.jpeg?w=620&q=90',
      description:
          'Film ini mengikuti perjalanan Nadia, seorang individu yang menjadi satu-satunya yang berhasil selamat dari peristiwa tragis yang menimpa keluarganya',
      rating: '8.4',
      year: '2019',
      duration: '190 min'),
  Movie(
      id: 'dr1049413',
      title: 'Petualangan Sherina 2',
      imageUrl:
          'https://akcdn.detik.net.id/community/media/visual/2023/08/24/film-bioskop-petualangan-sherina-2-2023.jpeg?w=620&q=90',
      description:
          'Film bioskop Petualangan Sherina 2 hadir sebagai sekuel yang dinantikan setelah lebih dari dua dekade sejak penayangan film pertamanya,',
      rating: '8.2',
      year: '2009',
      duration: '106 min'),
];

final bestMovieList = [
  Movie(
      id: 'dr0438986',
      title: 'The Excorcist: Believer',
      imageUrl:
          'https://akcdn.detik.net.id/community/media/visual/2023/10/04/film-bioskop-yang-tayang-bulan-oktober-2023-9.jpeg?w=440',
      description:
          'The Exorcist: Believer adalah sekuel film The Exorcist (1973). Victor Fielding membesarkan anaknya bernama Angela seorang diri.',
      rating: '8.4',
      year: '2020',
      duration: '130 min'),
  Movie(
      id: 'dr6720628',
      title: 'Road To Boston',
      imageUrl:
          'https://akcdn.detik.net.id/community/media/visual/2023/10/04/film-bioskop-yang-tayang-bulan-oktober-2023-8.jpeg?w=800',
      description:
          'Suh Yun-Bok adalah pelari maraton berusia 24 tahun. Dua tahun setelah pembebasan Korea dari pemerintahan kolonial Jepang,',
      rating: '9.7',
      year: '2016',
      duration: '135 min'),
  Movie(
      id: 'dr6779390',
      title: 'Bangku Kosong',
      imageUrl:
          'https://akcdn.detik.net.id/community/media/visual/2023/10/04/film-bioskop-yang-tayang-bulan-oktober-2023-7.jpeg?w=495',
      description:
          'Siapa sangka saat sebuah sekolah menyelenggarakan ujian, para siswa malah mendapat pengalaman mistis.',
      rating: '8.1',
      year: '2019',
      duration: '100 min'),
];
