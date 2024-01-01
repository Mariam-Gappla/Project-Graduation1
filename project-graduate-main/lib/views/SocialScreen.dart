import 'package:flutter/material.dart';
import 'package:diabetes/widgets/PersonsList.dart';
import 'package:diabetes/widgets/PostsList.dart';

class SocialScreen extends StatelessWidget {
  const SocialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(Icons.messenger_outline),
          ),
          Padding(
            padding: const EdgeInsets.only(right:15),
            child: Icon(Icons.add),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(Icons.search_outlined),
          ),
          SizedBox(width: 80,),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Text("عبد الرحمن دسوقى"),
          ),
          Image.asset("project-graduate-main/assets/images/Ellipse 721.png"),
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(right: 5,left: 5),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            SliverToBoxAdapter(
                child:PersonsList()
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            SliverToBoxAdapter(
                child: PostsList()
            ),



          ],
        ),
      ),
    );
  }
}
