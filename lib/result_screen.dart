import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  final dynamic sign;
  final dynamic details;
  final dynamic image;

  const ResultScreen(
      {super.key,
      required this.sign,
      required this.details,
      required this.image});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "Result",
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 25,
              fontWeight: FontWeight.w900,
              letterSpacing: 2,
              wordSpacing: 3,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              widget.sign,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 34,
                wordSpacing: 3,
                letterSpacing: 2,
                fontWeight: FontWeight.w700,
              ),
            ),
            Image.asset(
              widget.image,
              height: 250,
              width: 250,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 2, 20, 2),
              child: Text(
                widget.details,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  wordSpacing: 2,
                  letterSpacing: 2,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ),
          ],
        ));
  }
}
