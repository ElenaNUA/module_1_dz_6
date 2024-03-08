import 'package:flutter/material.dart';

void main() {
  int age = 70;
  double ticketPrice = 15.99;
  double money = 10.0;
  int ticketPriceWithBenefits = 0;
  bool pensionCard = false;

  if (age >= 0 && age <=14) {
    print('Проходьте! Вартість проїзду: $ticketPriceWithBenefits');
  } else if (age > 14 && age < 65 && money >= ticketPrice) {
    double change = money - ticketPrice;
    print('Проходьте! Вартість проїзду: $ticketPrice');
    print('Ваша здача: $change');
  } else if (age > 14 && age < 65 && money < ticketPrice) {
    double change = money - ticketPrice;
    print('Прохід заборонено! Вартість проїзду: $ticketPrice');
    print('Невистачає: $change');
  } else if (age >= 65 && pensionCard == true) {
    print('Проходьте!');
  } else if (age >= 65 && pensionCard == false) {
    print('Прохід заборонено! Будь-ласка, предʼявіть пенсійне посвідчення!');
  }
}
