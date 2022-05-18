
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemSliderWidget extends StatelessWidget {
  const ItemSliderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      margin: const EdgeInsets.only(right: 14.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(14.0),
            child: Image.network(
              "https://bookstr.com/wp-content/uploads/2019/12/Image-via-Amazon-1.jpg",
              height: 250,
              width: 170,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 6.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "JRR Tolkien",
                  style: GoogleFonts.poppins(
                    fontSize: 12.0,
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(
                  height: 2.0,
                ),
                Text(
                  "The Hobbit - Final Edition",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(
                    fontSize: 14.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}