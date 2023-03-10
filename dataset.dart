import 'package:flutter/material.dart';

class CardData {
  final String balance;
  final String date;
  final String number;
  final Color color;
  final String image;

  CardData({this.balance, this.date, this.number, this.color, this.image});
}

List<CardData> cards = [
  CardData(
      balance: '23,532',
      date: '12/26',
      number: '5262',
      color: Colors.blue,
      image: "assets/mastercard.png"),
  CardData(
      balance: '48,632',
      date: '01/23',
      number: '5737',
      color: Colors.red,
      image: "assets/mastercard.png"),
  CardData(
      balance: '74,363',
      date: '07/24',
      number: '6315',
      color: Colors.green,
      image: "assets/mastercard.png")
];

class LastInvestmentData {
  final int value;
  final String name;
  LastInvestmentData({this.value, this.name});
}

List<LastInvestmentData> lastInvestment = [
  LastInvestmentData(value: 33624, name: "Twitter, Inc. ao"),
  LastInvestmentData(value: 23864, name: "Tesla, Inc. ao"),
  LastInvestmentData(value: 20724, name: "Volkswagon, Inc.ao")
];

class Recommended {
  final String name;
  final String subtitle;
  final String icon;
  final String value;
  Recommended({this.name, this.subtitle, this.icon, this.value});
}

List<Recommended> recommendedList = [
  Recommended(
      name: "Reliance Industries",
      subtitle: "Conglomerate industry",
      value: "+190%",
      icon: "assets/r.jpg"),
  Recommended(
      name: "Ashok Leyland",
      subtitle: "Automotive industry",
      value: "+173%",
      icon: "assets/al.jpg"),
  Recommended(
      name: "Tata Steel",
      subtitle: "Steel Manufacture industry",
      value: "+189%",
      icon: "assets/t.jpg"),
  Recommended(
      name: "Cipla",
      subtitle: "Pharmaceutical industry",
      value: "+149%",
      icon: "assets/ci.jpg"),
  Recommended(
      name: "Eicher Motors",
      subtitle: "Automotive industry",
      value: "+160%",
      icon: "assets/e.jpg"),
];
