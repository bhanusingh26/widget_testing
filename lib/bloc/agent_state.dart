part of 'agent_bloc.dart';

abstract class AgentState extends Equatable {
  const AgentState();
  @override
  List<Object> get props => [];
}

class AgentInitial extends AgentState {}

class ShowNewChanges extends AgentState {
  final int num;
  final String name;

  const ShowNewChanges({required this.name, required this.num});

  @override
  List<Object> get props => [];
}
