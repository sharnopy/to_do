import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../provider/myprovider.dart';
class settings extends StatefulWidget {


  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    var selectedLanguage=AppLocalizations.of(context)!.english;
    var selectedMood= AppLocalizations.of(context)!.dark;
    var provider=Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(AppLocalizations.of(context)!.language,style: GoogleFonts.poppins(
            fontWeight: FontWeight.w700,
            fontSize: 14
          ),),
         InkWell(
           onTap: () {
             provider.changeLanguage("en");

           },
           child: Container(
             child: Text(AppLocalizations.of(context)!.english),
           ),
         ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              provider.changeLanguage("ar");
            },
            child: Container(
             child: Text(AppLocalizations.of(context)!.arabic),
         ),
          ),

          SizedBox(
            height: 20,
          ),
          Text(AppLocalizations.of(context)! .mood,style: GoogleFonts.poppins(
              fontWeight: FontWeight.w700,
              fontSize: 14
          ),),
          Container(
            child: Text(AppLocalizations.of(context)!.dark),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Text(AppLocalizations.of(context)!.light),
          ),

        ],
      ),
    );
  }
}




