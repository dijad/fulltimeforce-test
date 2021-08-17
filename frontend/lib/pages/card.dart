import 'package:flutter/material.dart';
import 'package:frontend/logic/Commit.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:slimy_card/slimy_card.dart';

class CommitCard extends StatelessWidget {
  final Commit commit;

  const CommitCard(this.commit);
  @override
  Widget build(BuildContext context) {
    return SlimyCard(
      borderRadius: 30,
      color: Colors.white,
      width: MediaQuery.of(context).size.width / 3.2,
      topCardHeight: MediaQuery.of(context).size.height / 2.8,
      bottomCardHeight: 140,
      topCardWidget: topCard(),
      bottomCardWidget: bootomCard(),
    );
  }

  Widget topCard() {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('Sha: ',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  Text(commit.sha,
                      style: TextStyle(color: Colors.black, fontSize: 18))
                ],
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('Distinct: ',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  Text(commit.distinct,
                      style: TextStyle(color: Colors.black, fontSize: 18))
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('Email: ',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  Flexible(
                    child: Text(commit.email,
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('Name: ',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  Text(commit.name,
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 18,
                          fontWeight: FontWeight.bold))
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('Url:  ',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  Flexible(
                    child: Text(commit.url,
                        style: TextStyle(color: Colors.black, fontSize: 18)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget bootomCard() {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 10),
          Text('Message',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Flexible(
              child: Text('"${commit.message}"',
                  style: TextStyle(color: Colors.black))),
        ],
      ),
    );
  }
}
