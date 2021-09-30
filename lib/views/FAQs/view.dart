import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/single_item.dart';
import 'faqs_cubit.dart';

class FAQsView extends StatefulWidget {
  @override
  State<FAQsView> createState() => _FAQsViewState();
}

class _FAQsViewState extends State<FAQsView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FAQsCubit()..getQuestionsAndAnswers(),
      child: BlocBuilder<FAQsCubit, FAQsState>(
        builder: (context, state) => state is FAQsLoading
            ? Center(child: CircularProgressIndicator())
            : Scaffold(
                body: SingleChildScrollView(
                physics: ScrollPhysics(),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(30, 50, 30, 50),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Frequently Asked Questions:",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: FAQsCubit.of(context).items.length,
                          itemBuilder: (context, index) {
                            return SingleItem(
                                FAQsCubit.of(context).items[index].question,
                                FAQsCubit.of(context).items[index].answer);
                          })
                    ],
                  ),
                ),
              )),
      ),
    );
  }
}
