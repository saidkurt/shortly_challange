extension StringOverFlow on String {
  String overFlow() {
    if (length < 17) {
      return this;
    } else {
      return substring(0, 17) + "...";
    }
  }
}
