class Zekaritem {
  final String text;
  final int repeat;
  int currentCount;

  Zekaritem({required this.text, required this.repeat}) : currentCount = repeat;

  void decrease() {
    if (currentCount > 0) currentCount--;
  }
}
