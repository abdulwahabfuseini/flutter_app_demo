import 'package:flutter/material.dart';
import '../../../utils/constants.dart';

class MomoScreen extends StatelessWidget {
  const MomoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMtnYellow,
      appBar: AppBar(
        backgroundColor: kMtnYellow,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        title: Text(
          "MoMo",
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: kLightGrey,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Balance", style: TextStyle(fontSize: 20),),
                    const SizedBox(height: 13,),
                    Divider(thickness: 2,),
                    const SizedBox(height: 12,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                      decoration: BoxDecoration(
                          border: Border.all(width: 3),
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: Row(
                        spacing: 20,
                        children: [
                          Image.asset("assets/images/momo.webp", width: 40, height: 40,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            spacing: 3,
                            children: [
                              Row(
                                spacing: 6,
                                children: [
                                  Icon(Icons.phone_android_rounded, size: 15, color: kMtnYellow,),
                                  Text("MoMo Balance", style: TextStyle( fontWeight: FontWeight.w600, color: Colors.grey),)
                                ],
                              ),
                              Row(
                                spacing: 15,
                                children: [
                                  Text("GHC ****.**", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                                  Icon(Icons.remove_red_eye_outlined, color: Colors.grey,)
                                ],
                              ),
                              Text("Last login: 16/07/2025 at 11:59:53", style: TextStyle(color: Colors.grey),)
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
