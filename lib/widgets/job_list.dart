import 'package:day24/models/job.dart';
import 'package:day24/widgets/job_details.dart';
import 'package:day24/widgets/job_item.dart';
import 'package:flutter/material.dart';

class JobList extends StatelessWidget {
  //const JobList({Key? key}) : super(key: key);
   final jobList=Job.generateJobs();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 25),
      height: 200,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
          return GestureDetector(
              onTap: (){
                showModalBottomSheet(
                  backgroundColor: Colors.transparent,
                    isScrollControlled: true,
                    context: context, 
                    builder: (context)=>JobDetails(jobList[index]));
              },
              child: JobItem(jobList[index], showTime: true));
          },
          separatorBuilder: (_,index)=>SizedBox(width: 15),
          itemCount: jobList.length
      ),
      
    );
  }
}
