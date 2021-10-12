import 'dart:convert';

import 'package:equatable/equatable.dart';

class BscScanSupplyModel with EquatableMixin {
  final String status;
  final String message;
  final String result;

  BscScanSupplyModel({
    required this.status,
    required this.message,
    required this.result,
  });

  BscScanSupplyModel copyWith({
    String? status,
    String? message,
    String? result,
  }) {
    return BscScanSupplyModel(
      status: status ?? this.status,
      message: message ?? this.message,
      result: result ?? this.result,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'status': status,
      'message': message,
      'result': result,
    };
  }

  factory BscScanSupplyModel.empty() {
    return BscScanSupplyModel(
      status: 'empty',
      message: '',
      result: '',
    );
  }

  factory BscScanSupplyModel.fromMap(Map<String, dynamic> map) {
    return BscScanSupplyModel(
      status: map['status'],
      message: map['message'],
      result: map['result'],
    );
  }

  String toJson() => json.encode(toMap());

  factory BscScanSupplyModel.fromJson(String source) =>
      BscScanSupplyModel.fromMap(json.decode(source));

  @override
  bool? get stringify => true;

  @override
  List<Object> get props => [status, message, result];
}
