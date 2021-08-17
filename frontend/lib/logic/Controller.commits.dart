import 'Commit.dart';
import 'dart:convert';
import 'package:get/state_manager.dart';
import 'package:http/http.dart' as http;

class ControllerCommit extends GetxController {
  List<Commit> _myCommits = [];
  int _code = 0;

  List<Commit> get myCommits => _myCommits;
  int get code => _code;

  parseCommits(ip) async {
    var url = Uri.parse('http://$ip:4000/commits');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      _code = response.statusCode;
      List<dynamic> list = json.decode(response.body);
      List<Commit> commits = list
          .map(
            (dynamic item) => Commit.fromJson(item),
          )
          .toList();
      _myCommits = commits;
      update();
    } else {
      _code = response.statusCode;
    }
  }
}
