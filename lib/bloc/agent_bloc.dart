import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'agent_event.dart';
part 'agent_state.dart';

class AgentBloc extends Bloc<AgentEvent, AgentState> {
  AgentBloc() : super(AgentInitial()) {
    on<AddAgent>((event, emit) {
      emit(ShowNewChanges(name: event.name, num: event.num));
    });
  }
}
