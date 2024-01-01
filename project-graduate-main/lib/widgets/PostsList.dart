import 'package:flutter/material.dart';
class PostsList extends StatelessWidget {
  const PostsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context,index){
          return Container(
            margin: EdgeInsets.only(bottom: 11),
            height: 230,
            width: 328,
            decoration: BoxDecoration(
              color: Color(0xFFAAAAAA),
              borderRadius: BorderRadius.circular(10)
            ),
            child: Padding(
              padding: const EdgeInsets.only(right: 5,left: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,

                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                  onPressed: (){},
                                  icon: Icon(Icons.add)
                              ),
                              SizedBox(width: 210,),
                              Text("على سيد"),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(" 22 ساعه",style: TextStyle(
                                fontSize: 9,
                              ),
                                textAlign: TextAlign.right,
                              ),
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15,top: 15),
                        child: Image.asset("project-graduate-main/assets/images/Ellipse 721.png"),
                      ),

                    ],
                  ),
                  Text("التحكم في مرض السكري رحلة وليس جهدًا فرديًا. احط نفسك بأشخاص إيجابيين ومشجعين، سواء أكانت عائلتك أو أصدقاءك أو مجموعة دعم مرضى السكري. دعمهم سيساعدك على البقاء متحفزًا ومعتمدًا على نفسك في رحلة التحكم في مرض السكري",
                    textAlign: TextAlign.right,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Text("مشاركه"),
                              IconButton(
                                  onPressed: (){},
                                  icon: Icon(Icons.share))
                            ],
                          ),
                          Text("1 مشاركه"),
                        ],
                      ),
                      SizedBox(
                        width: 57,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text("تعليق"),
                              IconButton(
                                  onPressed: (){},
                                  icon: Icon(Icons.comment))
                            ],
                          ),
                          Text("15 تعليق"),
                        ],
                      ),
                      SizedBox(
                        width: 57,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text("اعجاب"),
                              IconButton(
                                  onPressed: (){},
                                  icon: Icon(Icons.favorite_outline_sharp))
                            ],
                          ),
                          Text("22 تسجيل اعجاب"),
                        ],
                      ),

                    ],
                  )

                ],
              ),
            ),
          );
        }

    );
  }
}
