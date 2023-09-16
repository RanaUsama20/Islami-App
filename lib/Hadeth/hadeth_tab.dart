import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'item_hadeth_name.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List <Hadeth> ahadethList = [];

  @override
  Widget build(BuildContext context) {
    if(ahadethList.isEmpty) {
      LoadHadethFile();
    }
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/hadeth_logo.png'),
          Divider(
            color: Theme.of(context).primaryColor,
            thickness: 3,
          ),
          Text(AppLocalizations.of(context)!.hadeth_name,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium),
          Divider(
            color: Theme.of(context).primaryColor,
            thickness: 3,
          ),
          ahadethList.isEmpty?
             Center(child: CircularProgressIndicator(
               color: Theme.of(context).primaryColor,
             ))
              :
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return Divider(
                  color: Theme.of(context).primaryColor,
                  thickness: 1,
                );

              },
              itemBuilder: (context, index) {
                return itemHadethName(hadeth: ahadethList[index],);
              },
              itemCount: ahadethList.length,
            ),
          )

        ],
      ),
    );
  }

  void LoadHadethFile() async{
 String ahadethContent = await rootBundle.loadString('assets/files/ahadeth.txt');
 List<String> hadethList = ahadethContent.split('#\r\n');
 for(int i = 0; i < hadethList.length ; i++ ){
   List<String> hadethLines = hadethList[i].split('\n');
   String title = hadethLines[0];
   hadethLines.removeAt(0);
   Hadeth hadeth = Hadeth(title: title, content: hadethLines);
   ahadethList.add(hadeth);
   setState(() {

   });

 }
  }
}

class Hadeth{
  String title;
  List<String> content;
Hadeth({required this.title, required this.content});
}

