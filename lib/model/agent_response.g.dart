// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AgentResponse _$AgentResponseFromJson(Map<String, dynamic> json) =>
    AgentResponse(
      age: (json['age'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      name: json['name'] as String,
      num: (json['num'] as num).toInt(),
    );

Map<String, dynamic> _$AgentResponseToJson(AgentResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'num': instance.num,
      'age': instance.age,
    };
