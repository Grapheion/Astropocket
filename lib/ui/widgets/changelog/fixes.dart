import 'package:astropocket/backend/global_variables.dart';
import 'package:astropocket/style/specific_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Fixes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: getHeight(context) / 20.0),
          child: Row(
            children: [
              Icon(Icons.tune_outlined),
              Padding(
                padding: EdgeInsets.only(left: getWidth(context) / 30.0),
                child: Text(
                  'Fixes',
                  style: GoogleFonts.poppins(
                      fontSize: 18.0, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: getHeight(context) / 30.0),
          child: RichText(
            text: TextSpan(children: [
              TextSpan(
                text: 'Connection status:',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 15.0,
                  color: SpecificColors(context).primaryTextColor,
                ),
              ),
              TextSpan(
                text:
                    ' fixed a bug of the connection status that was causing offline drawer even if there was an active connection.',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 15.0,
                  color: SpecificColors(context).secondaryTextColor,
                ),)
                ,
                 TextSpan(
                text: '\n\nChangelog status bar color:',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 15.0,
                  color: SpecificColors(context).primaryTextColor,
                ),
              ),
              TextSpan(
                text:
                    ' fixed a bug in the changelog screen that was causing a wrong status bar color for light theme.',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 15.0,
                  color: SpecificColors(context).secondaryTextColor,
                ),
              ),
            ]),
          ),
        ),
      ],
    );
  }
}
