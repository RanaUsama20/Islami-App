import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_rana/Hadeth/hadeth_tab.dart';
import 'package:islami_rana/Hadeth/itemHadethDetails.dart';
import 'package:islami_rana/Home/myTheme.dart';

class HadethDetailsScreen extends StatefulWidget {
  static const String routeName = 'Hadeth Details';

  @override
  State<HadethDetailsScreen> createState() => _HadethDetailsScreenState();
}

class _HadethDetailsScreenState extends State<HadethDetailsScreen> {

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;

    return Stack(
      children: [
        Image.asset('assets/images/default_background.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,),
        Scaffold(
          appBar: AppBar(
            title: Text(
                args.title,
                style: Theme.of(context).textTheme.titleLarge),

          ),
          body:
          Container(

            margin: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height*0.06,
                horizontal: MediaQuery.of(context).size.width*0.05
            ),
            decoration: BoxDecoration(
              color: MyTheme.whiteColor,
              borderRadius: BorderRadius.circular(25),

            ),
            child: ListView.builder(
                itemBuilder: (context, index) {
                  return itemHadethDetails(content: args.content[index]);
                },
                itemCount: args.content.length ),
          ),

        )
      ],
    );


  }
}


