import 'package:flutter/material.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';
import 'package:storezone/consts/dim.dart';
import 'package:storezone/views/register/components/register_button.dart';

class HomeView extends StatelessWidget {
  final List<String> items = [
    "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/12/13/00/23/christmas-3015776_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/19/10/55/christmas-market-4705877_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
              height: 100.0,
              child: ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) => Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 2, horizontal: 14),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: Color(0xFFECE6FA),
                            radius: 28,
                          ),
                          Icon(
                            Icons.addchart,
                            color: Colors.grey[700],
                          )
                        ],
                      ),
                      Text(
                        "Welcome Note",
                        style: TextStyle(color: Colors.grey[600], fontSize: 13),
                      )
                    ],
                  ),
                ),
              ),
            ),
            GFCarousel(
                viewportFraction: 1.0,
                autoPlay: true,
                aspectRatio: 1.4,
                items: items.map(
                  (url) {
                    return Container(
                      child: ClipRRect(
                        child:
                            Image.network(url, fit: BoxFit.cover, width: 1000),
                      ),
                    );
                  },
                ).toList()),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.grey[350],
                        spreadRadius: 20,
                        blurRadius: 20),
                  ]),
                ),
                Container(
                  height: heightMediaQuery(context, 4),
                  width: widthMediaQuery(context, 2),
                  child: Card(
                    margin: EdgeInsets.all(10),
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            "Welcome",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text("Sign in for the best experience"),
                        ),
                        Spacer(),
                        registerButton(
                            context, Color(0xFFFD9A25), "Sign in", 22,
                            textColor: Colors.white)
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
