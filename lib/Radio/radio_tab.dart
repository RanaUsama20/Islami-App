import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class RadioTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Image.asset('assets/images/radio_box.png'),
          SizedBox(
              height: 40
          ),
          Text(AppLocalizations.of(context)!.holy_quran_podcast,
          style: Theme.of(context).textTheme.titleMedium,
          textAlign: TextAlign.center),
          SizedBox(
            height: 40
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.skip_previous_rounded,
                  color: Theme.of(context).primaryColor,size: 40),
                SizedBox(
                  width: 10),
                Icon(Icons.play_arrow_rounded,
                    color: Theme.of(context).primaryColor,size: 80),
                SizedBox(
                    width: 10),
                Icon(Icons.skip_next_rounded,
                    color: Theme.of(context).primaryColor,size: 40),
              ],
            ),

          
        ]
    );
  }
}
