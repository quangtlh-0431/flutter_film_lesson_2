class Film{
  final String urlImg;
  final String description;
  final String title;
  final double? rate;
  const Film({
    required this.urlImg,
    required this.description,
    required this.title,
    this.rate = 0
  });
}