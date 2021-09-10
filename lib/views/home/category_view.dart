import 'package:flutter/material.dart';

class CategoryView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(

      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return SizedBox(
          height: 100,
          child: ListTile(
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 100,
                minHeight: 100,
                maxWidth: 150,
                maxHeight: 150,
              ),
              child: Image.network("https://cdn.pixabay.com/photo/2021/08/25/20/42/field-6574455__480.jpg",height: 100, fit: BoxFit.cover),
            ),
            title: Text("list[index].name",style: TextStyle(fontSize: 20.0),),
            contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
            dense:true,
          ),
        );
      },
    );
  }
}
