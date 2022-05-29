import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result Nepal"),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: [
          RedBox("SEE Result", "http://result.see.gov.np/Result"),
          RedBox("NEB Result", "https://www.neb.gov.np/en/results"),
          RedBox("IPO Result", "https://iporesult.cdsc.com.np/"),
          RedBox("Army Result", "https://www.nepalarmy.mil.np/"),
          RedBox("TU Result", "https://www.tuexam.edu.np/"),
          RedBox("PU Result", "https://puexam.edu.np/index.php/find-results"),
          RedBox("KU Result", "https://ku.edu.np/news-app?tags=Result"),
        ],
      ),
    );
  }
}

class RedBox extends StatelessWidget {
  final String title;
  final String url;
  RedBox(this.title, this.url);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 100,
          decoration: BoxDecoration(
              color: Colors.green, borderRadius: BorderRadius.circular(10)),
          child: Center(
              child: Text(
            title,
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          )),
        ),
      ),
      onTap: () {
        launch(url);
      },
    );
  }
}
