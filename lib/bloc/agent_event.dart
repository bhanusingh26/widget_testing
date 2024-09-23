part of 'agent_bloc.dart';

abstract class AgentEvent extends Equatable {
  const AgentEvent();
  @override
  List<Object> get props => [];
}

class AddAgent extends AgentEvent {
  final int num;
  final String name;

  const AddAgent({required this.name, required this.num});

  @override
  List<Object> get props => [num, name];
}
