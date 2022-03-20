class Words {
  int n = 0;
  List<String> word = [
    'A',
    'B',
    'D',
    'E',
    'G',
    'I',
    'J',
    'L',
    'M',
    'N',
    'Q',
    'S',
    'V',
    'W',
    'X',
  ];
  List<String> w = [
    'a',
    'b',
    'd',
    'e',
    'g',
    'i',
    'j',
    'l',
    'm',
    'n',
    'q',
    's',
    'v',
    'w',
    'x'
  ];
  void next() {
    if (n < word.length - 1) {
      n++;
    } else {
      n = 0;
    }
  }
}
