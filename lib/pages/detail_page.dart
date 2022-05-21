import 'package:flutter/material.dart';
import 'package:flutter_codigo5_sqflite/ui/utils/colors.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(28.0),
                  bottomLeft: Radius.circular(28.0),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://i.pinimg.com/originals/5e/cc/64/5ecc64ef469ae2d5d3660ca7bde44ca0.jpg"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
