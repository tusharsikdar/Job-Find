import 'package:flutter/material.dart';
import 'package:day24/models/job.dart';
class JobItem extends StatelessWidget {
  //const JobItem({Key? key}) : super(key: key);
  final Job job;
  JobItem(this.job, {required bool showTime});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(35),color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Image.asset(job.logoUrl),
                      )
                    ),
                    SizedBox(width: 10,),
                    Text(job.company,style: TextStyle(fontSize: 20),)
                  ],
                ),
                Icon(Icons.bookmark_outline)
              ],
            ),
            Text(job.title, style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
            Row(
              children: [
                Icon(Icons.location_on_outlined, color: Colors.amber,),
                SizedBox(width: 10,),
                Text(job.location),
              ],
            )

          ],
        ),
      )
    );
  }
}
