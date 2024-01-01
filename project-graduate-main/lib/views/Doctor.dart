import 'package:diabetes/widgets/DoctorCard.dart';
import 'package:diabetes/widgets/DoctorList.dart';
import 'package:diabetes/widgets/DoctorOffer.dart';
import 'package:diabetes/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class Doctor extends StatelessWidget {
  const Doctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:const Size.fromHeight(70.0), // اختر ارتفاعًا مخصصًا هنا
        child: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title:const Text(
            'دكتور',
            style: TextStyle(
              color: Color(0xFF000000),
              fontSize: 18,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600,
            ),
          ),
           actions:const [
             Icon(Icons.arrow_forward_ios_outlined,size: 24,color: Color(0xFF0F1828),),
          ],
          leading:const Icon(Icons.notification_important,size: 24,color: Color(0xFF0F1828),),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 15, left: 15, top: 15),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: CustomTextField(
                hint: 'بحث',
              ),
            ),
            const SliverToBoxAdapter(
              child: Text(
                "العروض",
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF000000),
                  fontSize: 18,
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: DoctorOffer(),
            ),
            const SliverToBoxAdapter(
              child: Text(
                "المفضله",
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF000000),
                  fontSize: 18,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 210,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext, index) {
                    return DoctorCard(
                      NameOfDoc: " د سعيد محمد",
                      grade: "4.1",
                      TypeOfDoc: "علاج طبيعي",
                      DistanseOfDoc: "يبعد عنك ب 12 كيلو",
                      TimeOfDoc: "10 ص حتى 10 م",
                    );
                  },
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: Text(
                "الاكثر شهره",
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF000000),
                  fontSize: 18,
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: DoctorList(),
            )
          ],
        ),
      ),
    );
  }
}
