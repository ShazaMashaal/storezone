import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FAQsView extends StatefulWidget {
  @override
  State<FAQsView> createState() => _FAQsViewState();
}

class _FAQsViewState extends State<FAQsView> {
String dropdownValue="dropdownValue";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(30, 50, 30,0),
          child: Column(
            children: [
              Text("Frequently Asked Questions:",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              ListView.builder(
                itemCount: 3,
                itemBuilder: (context,index)=>
                  DropdownButtonHideUnderline (
                    child: DropdownButton<String>(

                      iconEnabledColor: Colors.indigo, // game changer

                      isExpanded: true,
                      value: dropdownValue,
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownValue = newValue;
                        });
                      },
                      items: <String>['Bank Deposit', 'Mobile Payment', 'Cash Pickup']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      })
                          .toList(),
                    ),
                  ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
