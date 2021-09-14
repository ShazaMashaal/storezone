import 'package:flutter/material.dart';

class CategoryView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Container(
          width: MediaQuery.of(context).size.width * 0.94,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
            ),
            color: Colors.white,
            elevation: 0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.3,
                      maxHeight: MediaQuery.of(context).size.width * 0.3,
                    ),
                    // child: Image.network(
                    //   "https://previews.123rf.com/images/yupiramos/yupiramos1501/yupiramos150102152/35448844-gadgets-tech-design-vector-illustration-eps10-graphic.jpg",
                    //
                    //   fit: BoxFit.fill,
                    // ),
                    child: FadeInImage(image: NetworkImage("https://previews.123rf.com/images/yupiramos/yupiramos1501/yupiramos150102152/35448844-gadgets-tech-design-vector-illustration-eps10-graphic.jpg"), placeholder: AssetImage("assets/images/placeholder.gif"),
                    )
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 30, 0, 0),
                        child: Text(
                          'electronic devices',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(
                        30,
                        40,
                        0,
                        0,
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );

        // SizedBox(
        //   height: 100,
        //   child: ListTile(
        //     leading:  Image.network("https://cdn.pixabay.com/photo/2021/08/25/20/42/field-6574455__480.jpg",height: 100, fit: BoxFit.cover),
        //
        //     title: Text("list[index].name",style: TextStyle(fontSize: 20.0),),
        //     trailing: Icon(Icons.arrow_forward_ios),
        //     contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
        //     dense:true,
        //   ),
        // );
      },
    );
  }
}
