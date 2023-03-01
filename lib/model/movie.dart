class Movie {
  final String id;
  final String title;
  final String imageUrl;
  final String description;
  final String rating;
  final String year;
  final String duration;

  Movie(
      {required this.id,
      required this.title,
      required this.imageUrl,
      required this.description,
      required this.rating,
      required this.year,
      required this.duration});
}

final movieList = [
  Movie(
      id: '1',
      title: 'Avengers: Endgame',
      imageUrl:
          'https://imageio.forbes.com/blogs-images/scottmendelson/files/2019/04/screencapture-file-C-Users-JckNa-OneDrive-Desktop-b-avengersendgame-horizontal-friday-17793-04d92fbf-webp-2019-04-23-08_14_14.jpg',
      description:
          'After Thanos, an intergalactic warlord, disintegrates half of the universe, the Avengers must reunite and assemble again to reinvigorate their trounced allies and restore balance.',
      rating: '8.6',
      year: '2019',
      duration: '181 min'),
  Movie(
      id: '2',
      title: 'Uncharted',
      imageUrl:
          'https://www.mvnews.org/wp-content/uploads/2022/03/uncharted-2.jpeg',
      description:
          'Victor Sullivan recruits Nathan Drake to help him find the lost fortune of Ferdinand Magellan. ',
      rating: '4.1',
      year: '2022 ',
      duration: '1h 56m'),
  Movie(
      id: '3',
      title: 'Real Steel',
      imageUrl:
          'https://images.moviesanywhere.com/b17b3aa07713067cffbed0b1b148d4c8/5f0760c5-1a61-45d5-b7dc-7bcd229c00c5.jpg',
      description:
          'Charlie aims to make it big in the sport of robot boxing. ..',
      rating: '7/10',
      year: '2011  ',
      duration: '2h 7m'),
];

final bestmovieList = [
  Movie(
      id: '4',
      title: 'The Tomorrow War',
      imageUrl:
          'https://cdn.mos.cms.futurecdn.net/uQeRkpmEZLmsRXtUWatwjT-970-80.jpg.webp',
      description:
          'The world is stunned when a group of time travellers arrive from the year 2051 to deliver an urgent message: ',
      rating: '6.5',
      year: '2021',
      duration: '2h 20m'),
  Movie(
      id: '5',
      title: 'The Pale Blue Eye',
      imageUrl:
          'https://i0.wp.com/www.eastmojo.com/wp-content/uploads/2023/01/Pale-blue-eyes.jpg?resize=1200%2C675&ssl=1',
      description:
          ' Veteran detective Augustus Landor investigates a series of grisly murders with the help of a young cadet',
      rating: '6.6/10',
      year: '2022 ',
      duration: '2h 8m'),
  Movie(
      id: '6',
      title: 'FIR',
      imageUrl:
          'https://static.toiimg.com/thumb/msid-88051422,width-219,height-317,imgsize-16420/88051422.jpg',
      description:
          'Tragedy strikes in the life of Irfan Ahmed when a series of stereotypical opinions, based on his religion,.',
      rating: ' 6.9/10',
      year: '2022  ',
      duration: '2h 7m'),
];

final topmovieList = [
  Movie(
      id: '7',
      title: 'Ambulance',
      imageUrl:
          'https://magarila.com/wp-content/uploads/2022/07/Cam-Thompson-Eiza-Gonzalez.jpg',
      description:
          'To fund his wife surgery, a veteran agrees to rob a bank with his adoptive brother. However, when their plan fails',
      rating: '3.7',
      year: '2022',
      duration: '2h 16m'),
  Movie(
      id: '8',
      title: 'Viking Wolf',
      imageUrl:
          'https://resizing.flixster.com/MVFHQ5gGzVt1nnaUUTMUwwCPbcw=/206x305/v2/https://flxt.tmsimg.com/assets/p20479403_p_v7_ab.jpg',
      description:
          'After witnessing a grotesque murder at a party in her new town, a teenager starts having strange visions and bizarre desires.',
      rating: '2.8',
      year: '2022 ',
      duration: '1h 56m'),
  Movie(
      id: '9',
      title: 'The Gray Man',
      imageUrl:
          'https://i0.wp.com/www.artofvfx.com/wp-content/uploads/2022/05/FTcgd2ZXEAEodoJ.jpg?fit=1280%2C1600&ssl=1',
      description:
          'When the CIA top asset -- his identity known to no one -- uncovers agency secrets, he triggers a global hunt by assassins set loose by his ex-colleague',
      rating: '6.5/10',
      year: '2022  ',
      duration: '2h 2m'),
];
