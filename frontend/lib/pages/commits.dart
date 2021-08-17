import 'package:flutter/material.dart';
import 'package:frontend/logic/Controller.commits.dart';
import 'package:frontend/pages/card.dart';
import 'package:get/state_manager.dart';

class CommitsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ControllerCommit _ctrlCommits = ControllerCommit();
    final _ctrlText = TextEditingController();
    return GetBuilder(
        init: _ctrlCommits,
        builder: (_) => Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.purpleAccent[700],
              title: Text(
                  "Commits para la prueba de FULLTIMEFORCE - desarrollador backend"),
            ),
            body: Container(
              color: Colors.grey[200],
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 2,
              child: Row(
                children: [
                  SizedBox(width: 5),
                  Column(
                    children: [
                      SizedBox(height: 20),
                      Flexible(child: Text('Ingrese la IP del servidor')),
                      SizedBox(height: 5),
                      Flexible(
                        child: Container(
                          width: 130,
                          child: TextField(
                              controller: _ctrlText,
                              decoration: InputDecoration(
                                labelText: 'IP',
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 15),
                                hintStyle: TextStyle(
                                    fontSize: 20.0, color: Colors.purple),
                                labelStyle: TextStyle(
                                    fontSize: 20.0, color: Colors.purple),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.purpleAccent),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.purple),
                                ),
                              )),
                        ),
                      ),
                      SizedBox(height: 30),
                      Flexible(
                          child: MaterialButton(
                        color: Colors.purpleAccent[700],
                        onPressed: () {
                          _ctrlCommits.parseCommits(_ctrlText.text);
                        },
                        child: Text(
                          'Aceptar',
                          style: TextStyle(color: Colors.white),
                        ),
                      ))
                    ],
                  ),
                  Flexible(
                    child: Column(
                      children: [
                        Flexible(
                          child: Container(
                            height: MediaQuery.of(context).size.height,
                            child: GridView.count(
                              crossAxisCount: 3,
                              padding: EdgeInsets.all(20),
                              crossAxisSpacing: 10, // entre columnas
                              mainAxisSpacing: 0, //entre filas
                              children: _ctrlCommits.myCommits
                                  .map((item) => CommitCard(item))
                                  .toList(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}
