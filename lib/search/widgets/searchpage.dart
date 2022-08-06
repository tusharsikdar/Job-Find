import 'package:day24/search/widgets/searchappbar.dart';
import 'package:day24/search/widgets/searchinput.dart';
import 'package:day24/search/widgets/searchlist.dart';
import 'package:day24/search/widgets/searchoption.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Row(
          children:[
          Expanded(
              flex: 2,
              child: Container()),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.grey.withOpacity(0.1),
              )
          )]
      ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchAppBar(),
              SearchInput(),
              Expanded(child: SearchList()),
            ],
          )

    ])
    );
  }
}
