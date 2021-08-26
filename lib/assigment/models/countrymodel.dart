import 'dart:convert';

class CountryModle {
  int id;
  String name;
  List<String> citys;
  CountryModle({
    this.id,
    this.name,
    this.citys,
  });

  CountryModle.fromMap(Map map) {
    this.id = map['id'];
    this.name = map['name'];
    this.citys = map['cities'];
  }
}
