import 'package:day24/search/widgets/searchpage.dart';
import 'package:flutter/material.dart';

class SearcgBar extends StatefulWidget {
  const SearcgBar({Key? key}) : super(key: key);

  @override
  State<SearcgBar> createState() => _SearcgBarState();
}

class _SearcgBarState extends State<SearcgBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
      child: Container(
        padding: EdgeInsets.all(15),
        height: 300,
        width: 500,
        //padding: MediaQuery.of(context).padding,
        //width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          image: DecorationImage(image: AssetImage("assets/search_bg.png"),
          fit: BoxFit.cover,
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Quick Search",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 30,color: Colors.white)),
            Text("You can Search quickly for \nthe job you want",
            style: TextStyle(height: 2,color: Colors.white),
            ),
            SizedBox(height: 30),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SearchPage()));
              },
              child: Container(
                height: 60,
                width: 450,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(45)
                ),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.start ,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Image.asset('assets/search.png',scale: 2),
                    ),
                    SizedBox(width: 30),
                    Text("Search",style: TextStyle(color: Colors.grey,fontSize: 20))
                  ],
                ),
              ),
            )

          ]),
      ),
    );
  }
}
