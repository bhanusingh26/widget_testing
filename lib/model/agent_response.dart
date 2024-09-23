import 'package:json_annotation/json_annotation.dart';

part 'agent_response.g.dart';

@JsonSerializable()
class AgentResponse {
  String name;
  int num;
  List<int> age;

  AgentResponse({required this.age, required this.name, required this.num});

  factory AgentResponse.fromJson(Map<String, dynamic> json) => _$AgentResponseFromJson(json);
  Map<String, dynamic> toJson() => _$AgentResponseToJson(this);
}
