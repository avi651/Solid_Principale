class OrderCalculator {
  num? totalAmount;
  num? taxPercentage;
  num? tip;
  num? shipping;

  void calculateOrder() {
    final orderValue = totalAmount! + taxPercentage! + tip! + shipping!;
    print(orderValue);
  }
}
