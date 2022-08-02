import 'package:json_annotation/json_annotation.dart';

part 'person.g.dart';

@JsonSerializable()
class Person {
  /// The generated code assumes these values exist in JSON.
  final int id;
  final String name;
  final String username;
  final String email;
  final dynamic address;


  /// The generated code below handles if the corresponding JSON value doesn't
  /// exist or is empty.


  Person({required this.id,required this.name,required this.username,required this.email,required this.address});

  /// Connect the generated [_$PersonFromJson] function to the `fromJson`
  /// factory.
  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$PersonToJson(this);
}