import 'dart:convert';

import 'package:flutter/foundation.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class BaseModel {
  bool? status;
  String? message;
  List<dynamic>? data;
  BaseModel({
    this.status,
    this.message,
    this.data,
  });

  BaseModel copyWith({
    bool? status,
    String? message,
    List<dynamic>? data,
  }) {
    return BaseModel(
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
      'message': message,
      'data': data,
    };
  }

  factory BaseModel.fromMap(Map<String, dynamic> map) {
    return BaseModel(
      status: map['status'] != null ? map['status'] as bool : null,
      message: map['message'] != null ? map['message'] as String : null,
      data: map['data'] != null ? (map['data'] as List<dynamic>) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory BaseModel.fromJson(String source) => BaseModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'BaseModel(status: $status, message: $message, data: $data)';

  @override
  bool operator ==(covariant BaseModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.status == status &&
      other.message == message &&
      listEquals(other.data, data);
  }

  @override
  int get hashCode => status.hashCode ^ message.hashCode ^ data.hashCode;
}
