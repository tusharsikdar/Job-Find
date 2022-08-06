import 'package:day24/widgets/homeappbar.dart';
import 'package:day24/widgets/job_list.dart';
import 'package:day24/widgets/searchbar.dart';
import 'package:day24/widgets/taglist.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                  flex: 2,
                  child: Container()),

              Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.grey.withOpacity(0.1),
                  ))
            ],
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                HomeAppBar(),
                SearcgBar(),
                TagList(),
                JobList(),
              ],
            ),
          )

        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow[600],
        elevation: 5,
        onPressed: (){},
        child: const Icon(Icons.add,
        color: Colors.white),
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Theme.of(context).primaryColor,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(label: 'Home',
            icon: Icon(Icons.home,
            size:20,color: Colors.teal[400],
            )),
            BottomNavigationBarItem(label: 'Case',
                icon: Icon(Icons.cases_outlined,
                    size:20,color: Colors.teal[400]
                )),
            BottomNavigationBarItem(label: '', icon: Text('')),
            BottomNavigationBarItem(label: 'Chat',
                icon: Icon(Icons.chat_outlined,
                    size:20,color: Colors.teal[400]
                )),
            BottomNavigationBarItem(label: 'Person',
                icon: Icon(Icons.person,
                    size:20,color: Colors.teal[400]
                )),


          ],
        ),
      ),
    );
  }
}
