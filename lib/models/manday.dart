import 'dart:convert';

class Manday{
  Manday({
    required this.Estate,
    required this.Region
});
  String Estate;
  String Region;

  factory Manday.fromJson(Map<String, dynamic> json) => Manday(
    Estate: json["Estate"],
    Region: json["Region"],
  );

  Map<String, dynamic> toJson() => {
    "Estate": Estate,
    "Region": Region,
  };
}