import 'package:flutter/material.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 60,left: 15,right: 15),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Welcome Home"),
              Text("Tushar Sikdar",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900)),
            ],
          ),

          Expanded(
              flex: 1,
              child:Stack(
               children: [
                 Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       Container(
                         margin:EdgeInsets.only(top: 30),
                       transform: Matrix4.rotationZ(100),
                       child: Icon(Icons.notifications_none, size: 35,color: Colors.grey)),
                       SizedBox(width: 35),
                       CircleAvatar(
                         radius: 30,
                         backgroundImage: AssetImage("assets/image01.jpg"),
                       )
                     ]
                 ),
            Positioned(
                left: 85,
                top: 12,
              child: Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red
                ),
              ))
              ],
              ),
          ),
        ],
      ),
    );
  }
}
