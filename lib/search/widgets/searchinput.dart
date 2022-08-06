import 'package:flutter/material.dart';
class SearchInput extends StatelessWidget {
  const SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      child: Row(
        children: [
          Expanded(child: TextField(
            cursorColor: Colors.grey,
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none
              ),
              hintText: 'Search',
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 18
              ),
              //contentPadding: EdgeInsets.zero,
              prefixIcon: Container(
                padding: EdgeInsets.all(15),
                child: Icon(Icons.search),
                //child: Image.asset('assets/search.png',width: 10),
              )
            ),
          )),
          SizedBox(width: 10),
          Container(
            height: 60,
            width: 60,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(color: Colors.teal[400],
            borderRadius: BorderRadius.circular(30)),
            child: Icon(Icons.playlist_add_outlined,color: Colors.white),
          )
        ],
      ),
    );
  }
}
