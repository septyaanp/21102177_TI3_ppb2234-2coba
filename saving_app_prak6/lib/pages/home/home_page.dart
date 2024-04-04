import 'package:flutter/material.dart';
import 'package:saving_app_prak6/styles/colors.dart';
import 'package:saving_app_prak6/styles/text_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: kBgColor.withOpacity(0.5),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                top: 35,
                right: 30,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome',
                            style: kBody1.copyWith(color: kMatterhornBlack),
                          ),
                          Text(
                            'Enga Santana',
                            style: kHeading6.copyWith(color: kMatterhornBlack),
                          ),
                        ],
                      ),
                      Container(
                        constraints: BoxConstraints.expand(
                          height: 40,
                          width: 40,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            image: DecorationImage(
                              image: AssetImage('assets/images/user-img.png'),
                              fit: BoxFit.cover,
                            )),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
