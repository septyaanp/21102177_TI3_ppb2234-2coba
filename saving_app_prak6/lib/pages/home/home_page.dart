import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome',
                            style: kBody1.copyWith(color: kMatterhornBlack),
                          ),
                          Text(
                            'Septya Andini Putri 👏',
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
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: kGrey,
                                blurRadius: 5,
                                offset: Offset.fromDirection(2),
                              ),
                            ]),
                      )
                    ],
                  ),
                  SizedBox(height: 28),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    constraints: BoxConstraints.expand(height: 170),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                      image: DecorationImage(
                        image: AssetImage('assets/images/bg-container.png'),
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'My Savings',
                          style: kSubtitle2.copyWith(color: kWhite),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Rp. 10.430.000',
                          style: kHeading5.copyWith(color: kWhite),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        LinearPercentIndicator(
                          lineHeight: 4,
                          padding: EdgeInsets.symmetric(horizontal: 0),
                          progressColor: kEgyptianBlue,
                          percent: 0.3,
                          backgroundColor: kWhite,
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Rp. 10.430.000  / Rp. 40.000.000',
                          style: kCaption.copyWith(
                            color: kWhite,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      _trasactionButton('assets/icons/save.png', 'Save Money'),
                      SizedBox(
                        width: 25,
                      ),
                      _trasactionButton('assets/icons/pay.png', 'Pay'),
                    ],
                  )
                ],
              ),
            ),
            Container(
              child: DraggableScrollableSheet(
                  builder: (context, scrollController) {
                return Container(
                  decoration: BoxDecoration(
                    color: kWhite,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  padding: const EdgeInsets.only(
                    left: 30,
                    right: 30,
                    top: 21,
                  ),
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 14 + 4),
                        child: SingleChildScrollView(
                          controller: scrollController,
                          child: Column(
                            children: [
                              Center(
                                child: Text(
                                  'Transaction History',
                                  style: kHeading6.copyWith(
                                    color: kLuckyBlue,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 31,
                              ),
                              _transactionList()
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 4,
                          width: 49,
                          color: kEgyptianBlue.withOpacity(0.1),
                        ),
                      )
                    ],
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }

  Widget _transactionList() {
    return Row(
      children: [
        SizedBox(
          height: 30,
          width: 30,
          child: CircleAvatar(
            backgroundColor: kTreeGreen.withOpacity(0.2),
            child: Image(
              image: AssetImage('assets/icons/triangle-up.png'),
              width: 14,
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Success!',
              style: kBody1.copyWith(color: kLuckyBlue),
            ),
            Text(
              'February 19, 03:25 PM',
              style: kCaption.copyWith(color: kLightGray),
            ),
          ],
        ),
        Text(
          '+ 100.000',
          style: kBody1.copyWith(color: kLuckyBlue),
        )
      ],
    );
  }

  Widget _trasactionButton(String icon, String text) {
    return Expanded(
      child: Container(
        constraints: BoxConstraints.expand(
          height: 60,
        ),
        decoration: BoxDecoration(
          color: kNightBlack,
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              width: 24,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              text,
              style: kBody1.copyWith(color: kWhite),
            ),
          ],
        ),
      ),
    );
  }
}
