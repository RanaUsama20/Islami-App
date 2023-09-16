import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_rana/Quran/itemSuraDetails.dart';
import 'package:islami_rana/Home/myTheme.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'Sura Details';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraNamesArgs;
    if(verses.isEmpty) {
      loadFiles(args.index);
    }
    return Stack(
      children: [
      Image.asset('assets/images/default_background.png',
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.fill,),
    Scaffold(
    appBar: AppBar(
    title: Text('${args.name}',
    style: Theme.of(context).textTheme.titleLarge),

    ),
    body: verses.length == 0? Center(child: CircularProgressIndicator()) :
    Container(

      margin: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height*0.06,
          horizontal: MediaQuery.of(context).size.width*0.05
      ),
      decoration: BoxDecoration(
        color: MyTheme.whiteColor,
        borderRadius: BorderRadius.circular(25),

      ),
      child: ListView.separated(
        itemBuilder: (context, index) {
        return itemSuraDetails(content: verses[index], index: index,);
        },
        separatorBuilder: (context, index) {
        return Divider(
        color: Theme.of(context).primaryColor,
        thickness: 1,
        );
        },
        itemCount: verses.length),
    ),

    )
      ],
    );

  }
  void loadFiles(int index)async{
    String content = await rootBundle.loadString('assets/files/${index+1}.txt');
    List <String> lines = content.split('\n');
    verses = lines;
    setState(() {

    });
  }
}



class SuraNamesArgs{
  String name;
  int index;
  SuraNamesArgs({required this.name,required this.index});
}
