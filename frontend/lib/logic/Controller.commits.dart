import 'Commit.dart';
import 'dart:convert';
import 'package:get/state_manager.dart';
import 'package:http/http.dart' as http;

class ControllerCommit extends GetxController {
  List<Commit> _myCommits = [];

  List<Commit> get myCommits => _myCommits;

  parseCommits() async {
    var url = Uri.parse('http://192.168.0.9:4000/commits');
    var response = await http.get(url);
    List<dynamic> list = json.decode(response.body);
    List<Commit> commits = list
        .map(
          (dynamic item) => Commit.fromJson(item),
        )
        .toList();
    _myCommits = commits;
    update();
  }
}
