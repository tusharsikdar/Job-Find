import 'package:day24/models/job.dart';
import 'package:flutter/material.dart';

class JobDetails extends StatelessWidget {
  //const JobDetails({Key? key}) : super(key: key);
  final Job job;
  JobDetails(this.job);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(color: Colors.white,
      borderRadius: BorderRadius.circular(35)
      ),
      height:500,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 5,
              width: 60,
              color: Colors.grey.withOpacity(0.5),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.withOpacity(0.1),
                      ),
                      child: Image.asset(job.logoUrl),
                    ),
                SizedBox(width: 10),
                Text(
                    job.company,
                    style: TextStyle(
                        fontSize: 16
                    )
                ),
                ],
                ),
                Row(children: [
                  Icon(
                      job.isMark?Icons.bookmark:Icons.bookmark_outline,
                      color: job.isMark?Theme.of(context).primaryColor:Colors.black
                  ),
                  Icon(Icons.more_horiz_outlined),
                ],)
              ],
            ),
            SizedBox(height: 20),
            Text(
              job.title,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.location_on_outlined,color: Colors.amber),
                    Text(job.location),
                    // Icon(Icons.access_time_outlined),Text(job.time),
                  ]),
                SizedBox(width: 85),
                Row(
                  children: [
                    Icon(Icons.access_time_outlined,color: Colors.amber),
                    Text(job.time)
                  ])
              ]),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Requirement',style: TextStyle(fontWeight:FontWeight.bold)
                )
              ]),
            SizedBox(height: 10),
            ...job.req.map((e) => Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 5,width: 5,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black
                    )
                  ),
                  SizedBox(width: 10),
                  ConstrainedBox(constraints: BoxConstraints(maxWidth: 300),
                  child: Text(e,
                  style: TextStyle(
                    wordSpacing: 3,
                    height: 1.5
                  ),
                  ),
                  )
                ]),
            )).toList(),
            Container(
              margin: EdgeInsets.symmetric(vertical: 25),
              height: 55,
              width: double.maxFinite,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(elevation: 3,primary: Colors.teal,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
                onPressed: (){},
                child: Text('Apply Now'),
              ),
            )
          ],
        ),
      )
    );
  }
}
