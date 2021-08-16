import 'package:flutter/material.dart';
import 'package:frontend/logic/Controller.commits.dart';
import 'package:frontend/pages/card.dart';
import 'package:get/state_manager.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:appbar_textfield/appbar_textfield.dart';

class CommitsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ControllerCommit _ctrlCommits = ControllerCommit();
    _ctrlCommits.parseCommits();
    return GetBuilder(
        init: _ctrlCommits,
        builder: (_) => Scaffold(
            appBar: AppBarTextField(
              backgroundColor: Colors.purpleAccent[700],
              title: Text("Ingresar IP del servidor"),
            ),
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
