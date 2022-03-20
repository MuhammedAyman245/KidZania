class Numbers {
  int q = 0;
  List<String> n = [
    '1','2','3','4','5','6','7','8','9','10'
  ];
  List<String> numbers = [
    '1','2','3','4','5','6','7','8','9','10'
  ];
  void next(){
    if (q < n.length -1){
      q++;
    }
    else{
      q = 0;
    }
  }

}