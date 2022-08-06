import 'package:flutter/material.dart';

class TagList extends StatefulWidget {

  @override
  State<TagList> createState() => _TagListState();
}

class _TagListState extends State<TagList> {
  final _taglist=['All','⚡ Popular','⭐  Feature', 'Freelancing','Premium','Feild'];
  var selected=0;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
            itemCount: _taglist.length,
            itemBuilder: (context,index){
              return GestureDetector(
                    onTap: (){
                      setState((){
                        selected=index;
                      });
                    },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
                  decoration: BoxDecoration(
                      color: selected==index?Colors.teal[100]:Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: selected==index?Colors.teal:Colors.black12
                    )
                  ),
                 child: Text(_taglist[index]),
                ),
              );
            },
          separatorBuilder: (_,index)=>SizedBox(width: 30),
            //itemBuilder: itemBuilder, separatorBuilder: separatorBuilder, itemCount: itemCount
        ),
    );
  }
}
