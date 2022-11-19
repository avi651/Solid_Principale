import 'package:flutter/material.dart';
import 'single_responsblity.dart';

void main() {
  final orderCal = OrderCalculator();
  orderCal.totalAmount = 100;
  orderCal.taxPercentage = 0.1;
  orderCal.tip = 10;
  orderCal.shipping = 5;
  orderCal.calculateOrder();
}
