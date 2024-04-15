import 'package:flutter/material.dart';
import 'package:saving_app_prak6/styles/colors.dart';
import 'package:saving_app_prak6/styles/text_style.dart';

class PortofolioPage extends StatelessWidget {
  const PortofolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 25),
            height: 220,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(40)),
              image: DecorationImage(
                image: AssetImage('assets/images/bg-container-2.png'),
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(
                  color: kGrey,
                  blurRadius: 5,
                  offset: Offset.fromDirection(2),
                )
              ],
            ),
            child: SafeArea(
              child: Column(
                children: [
                  Text(
                    'My Portofolio',
                    style: kHeading6.copyWith(
                        color: kWhite, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Savings Value',
                    style: kSubtitle2.copyWith(
                      color: kWhite,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Rp. 12.480.000',
                    style: kHeading5.copyWith(
                      color: kWhite,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
