import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prep_interview/bloc/agent_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late AgentBloc _agentBloc;

  @override
  void didChangeDependencies() {
    _agentBloc = BlocProvider.of<AgentBloc>(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Icon(Icons.draw_outlined),
      appBar: AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        title: Text('New App'),
        elevation: 3,
        shadowColor: Colors.grey,
      ),
      body: SafeArea(
          child: BlocListener<AgentBloc, AgentState>(
        listener: (context, state) {},
        child: BlocBuilder<AgentBloc, AgentState>(
          builder: (context, state) {
            if (state is AgentInitial) {
              return Column(
                children: [
                  Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 5,
                                shadowColor: Colors.grey,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
                            onPressed: () {
                              _agentBloc.add(AddAgent(name: 'Bhanu', num: 5));
                            },
                            child: const Text('Change Color'),
                          ),
                        ),
                      )),
                  Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            border: Border.all(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(5)),
                      )),
                  Expanded(
                      flex: 1,
                      child: Container(
                        // margin: EdgeInsets.sy,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            border: Border.all(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(5)),
                      ))
                ],
              );
            } else if (state is ShowNewChanges) {
              return Column(
                children: [
                  Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                            color: state.num == 5 ? Colors.redAccent : Colors.blue,
                            border: Border.all(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(5)),
                      )),
                  Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            border: Border.all(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(5)),
                      )),
                  Expanded(
                      flex: 1,
                      child: Container(
                        // margin: EdgeInsets.sy,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            border: Border.all(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(5)),
                      ))
                ],
              );
            } else {
              return Center(
                child: Text('Start'),
              );
            }
          },
        ),
      )),
    );
  }
}
