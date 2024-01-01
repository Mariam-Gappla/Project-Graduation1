import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PersonsList extends StatelessWidget {
  const PersonsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemBuilder: (context,index)=>Padding(
            padding: const EdgeInsets.only(left: 13),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 27,
                    backgroundColor: Color(0xFF000000),
                    child: Image.asset("assets/Ellipse 721.png")
                ),
                Text("محمد")
              ],
            ),
          ),
        itemCount: 20,
      ),
    );
  }
}
