import 'package:day24/models/job.dart';
import 'package:day24/widgets/job_item.dart';
import 'package:flutter/material.dart';
class SearchList extends StatelessWidget {
  // const SearchList({Key? key}) : super(key: key);
  final joblist=Job.generateJobs();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25),
      child: ListView.separated(
          padding: EdgeInsets.only(left: 25,right: 25,bottom: 25),
          itemBuilder: (context,index)=>JobItem(
            joblist[index], showTime: true,
            // showTime:true,
          ),
          separatorBuilder: (_,index)=>SizedBox(height: 20),
          itemCount: joblist.length),
    );
  }
}
