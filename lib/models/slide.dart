class Slide {
  String title;
  String description;
  List<String> image;

  Slide({
    this.title,
    this.description,
    this.image
  });
}

List<Slide> slide = [
  Slide(
    title: 'Young Land Lord Festival',
    description: 'Vist Venice for an amazing and unforgettable adventure.',
    image: [
      'assets/images/slide/youngLandloard1.jpg',
      'assets/images/slide/youngLandloard2.jpg',
    ],
  ),
  Slide(
    title: 'Plan To Win a Home',
    description: 'Vist Venice for an amazing and unforgettable adventure.',
    image: [
      'assets/images/slide/planToWinHome.jpg',
    ],
  ),
  Slide(
    title: 'Lemon Friday Promo',
    description: 'Vist Venice for an amazing and unforgettable adventure.',
    image: [
     'assets/images/slide/lemonFriday.jpg',
    ]
  )
  ];
   