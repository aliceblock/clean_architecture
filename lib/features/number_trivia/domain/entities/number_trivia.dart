import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

class NumberTrivia extends Equatable {
  final String text;
  @JsonKey(fromJson: toInt)
  final int number;

  NumberTrivia({
    @required this.text,
    @required this.number,
  }) : super([text, number]);
}

int toInt(num value) => value.toInt();
