import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class settings extends StatefulWidget {


  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    var selectedLanguage="English";
    var selectedMood="Dark";
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("language",style: GoogleFonts.poppins(
            fontWeight: FontWeight.w700,
            fontSize: 14
          ),),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white
            ),
            child: DropdownButton(
              underline: Divider(
                color: Colors.white,
              ),
              items: ["English","Arabic"].map((e) => DropdownMenuItem(child: Text("$e"),value: e,)).toList(),
              onChanged: ( val) {

                setState(() {
                  selectedLanguage=val! ;
                });
            },
            value:selectedLanguage ,),
          ),
          SizedBox(
            height: 20,
          ),
          Text("mood",style: GoogleFonts.poppins(
              fontWeight: FontWeight.w700,
              fontSize: 14
          ),),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white
            ),

            child: DropdownButton(
              underline: Divider(
                color: Colors.white,
              ),
              items: ["Dark","Light"].map((e) => DropdownMenuItem(child: Text("$e"),value: e,)).toList(),
              onChanged: ( val) {

                setState(() {
                  selectedMood=val! ;
                });
              },
              value:selectedMood ,),
          )

        ],
      ),
    );
  }
}




