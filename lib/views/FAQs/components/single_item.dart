import 'package:flutter/material.dart';

class SingleItem extends StatelessWidget {
  final String question;

  final String answer;

  const SingleItem(this.question, this.answer);

//TODO : Tap Question to expand answer and change arrow direction -- ExpansionTile

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            child: Row(
              children: [
                Text(
                  question,
                  style: TextStyle(fontSize: 20, letterSpacing: 1),
                ),
                Spacer(),
                Icon(Icons.arrow_forward_ios_rounded)
              ],
            ),
            color: Colors.grey[200],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30),
          child: Text(
            answer,
            style: TextStyle(color: Colors.grey, fontSize: 17),
          ),
        )
      ],
    );
  }
}
