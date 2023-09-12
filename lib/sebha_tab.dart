import 'dart:math';

import 'package:flutter/material.dart';
import 'package:islami_rana/myTheme.dart';

class SebhaTab extends StatefulWidget {

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  double rotation = 0;
  String subject = 'سبحان الله';
  String num = '0';


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
                Image.asset(
                    'assets/images/head of seb7a.png'),
                InkWell(
                  onTap: () {
                   setState(() {
                     rotation += 1;
                     num = numChange();
                     subject = SubjectChange(num);

                   });
                  },
                  child: AnimatedRotation(
                    turns: rotation,
                    duration: Duration(seconds: 2),
                    child: Image.asset(
                        'assets/images/body of seb7a.png'),
                  ),
                ),
                SizedBox(
                    height: 30),
                Text('number of tasbehs',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium),
                SizedBox(
              height: 30),
          ElevatedButton(onPressed: (){},
                    child: Text(num),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: MyTheme.blackColor ,
                      padding: EdgeInsets.all(10),
                      backgroundColor: MyTheme.lightBeige,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                        textStyle: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w400
                        )
                    )
                     ),
                SizedBox(
                    height: 30),
          ElevatedButton(onPressed: (){
          },
              child: Text(subject),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(10),
                  backgroundColor: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  textStyle: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400
                  )
              )
          ),

        ],
      ),
    );
  }

String numChange(){
    setState(() {

    });
  int number = int.parse(num);
    number += 1;
 return number.toString();
}

String SubjectChange(num){
    setState(() {
      int counter = int.parse(num);
      if(counter % 33 == 0){
        if(subject == 'سبحان الله'){
          subject = 'الله اكبر';
        }
        else if(subject == 'الله اكبر'){
          subject = 'الحمد لله';
        }
        else if(subject == 'الحمد لله'){
          subject = 'لا اله الا الله';
        }
        else if(subject == 'لا اله الا الله'){
          subject = 'لا حول ولا قوة الا بالله';
        }
        else if(subject == 'لا حول ولا قوة الا بالله'){
          subject = 'سبحان الله';
        }
        // counter++;
      }
    });
    return subject;
}

}
