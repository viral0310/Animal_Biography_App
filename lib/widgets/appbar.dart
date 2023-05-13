import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

App_Bar() {
  return Row(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "aplanet",
            textAlign: TextAlign.right,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 30,
              color: Colors.white.withOpacity(0.70),
            ),
          ),
          Text(
            "We Love the Planet",
            textAlign: TextAlign.right,
            style: GoogleFonts.poppins(
              fontSize: 15,
              color: Colors.white.withOpacity(0.70),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
      Spacer(),
      IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.menu,
          size: 30,
          color: Colors.white.withOpacity(0.70),
        ),
      )
    ],
  );
}
