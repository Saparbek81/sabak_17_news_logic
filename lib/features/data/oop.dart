class News {
  const News({
    required this.image,
    required this.text,
    required this.date,
  });
  final String image;
  final String date;
  final String text;
}

News news1 = const News(
    image: 'assets/Rectangle.png',
    date: '17fev 25',
    text:
        'Amet minim mollit non deserunt ullamco est sitaliqua dolor do amet sint. Velit officia consequat duis enim velit mollit');
News news2 = const News(
    image: 'assets/Rectangle (1).png',
    date: '5/27/15',
    text:
        'Aliqua id fugiat nostrud irure ex duis ea quis id quis ad et.Sunt qui esse pariatur duis deserunt mollit');
News news3 = const News(
    image: 'assets/Rectangle (3).png',
    date: '1/15/12',
    text:
        'Aliqua id fugiat nostrud irure ex duis ea quis id quis ad et.Sunt qui esse pariatur duis deserunt mollit');
News news4 = const News(
    image: 'assets/Rectangle (4).png',
    date: '2 sep 2020s',
    text:
        'Amet minim mollit non deserunt ullamco est sitaliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Pembroke Pines');
News news5 = const News(
    image: 'assets/Rectangle (5).png',
    date: '17fev 25',
    text:
        'Amet minim mollit non deserunt ullamco est sitaliqua dolor do amet sint. Nguyen, Shane');
News news6 = const News(
    image: 'assets/Rectangle.png',
    date: '17fev 25',
    text:
        'Amet minim mollit non deserunt ullamco est sitaliqua dolor do amet sint. Velit officia consequat duis enim velit mollit');
final List newsList = <News>[news1, news2, news3, news4, news5, news6];
