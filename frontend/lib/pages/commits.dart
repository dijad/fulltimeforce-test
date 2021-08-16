import 'package:flutter/material.dart';
import 'package:frontend/logic/Controller.commits.dart';
import 'package:frontend/pages/card.dart';
import 'package:get/state_manager.dart';

class CommitsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ControllerCommit _ctrlCommits = ControllerCommit();
    _ctrlCommits.parseCommits();
    return GetBuilder(
        init: _ctrlCommits,
        builder: (_) => Scaffold(
            appBar: AppBar(backgroundColor: Colors.purpleAccent[700]),
            body: Container(
                color: Colors.grey[300],
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                child: GridView.count(
                  crossAxisCount: 3,
                  padding: EdgeInsets.all(20),
                  crossAxisSpacing: 0, // entre columnas
                  mainAxisSpacing: 0, //entre filas
                  children: _ctrlCommits.myCommits
                      .map((item) => CommitCard(item))
                      .toList(),
                ))));
  }
}
