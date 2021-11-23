import 'package:book_store/styles/export_styles.dart';
import 'package:flutter/material.dart';

import 'navigation_screens.dart';

class Delivery extends StatefulWidget {
  const Delivery({Key? key}) : super(key: key);

  @override
  _DeliveryState createState() => _DeliveryState();
}

class _DeliveryState extends State<Delivery> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: const BottomNav(),
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.02,
          ),
          child: Column(
            children: [
              _TopBar(),
              _StepperIcons(),
              SizedBox(height: screenHeight * 0.02),
              const _DeliveryList(),
              // _SubTotalCard(),
              SizedBox(height: screenHeight * 0.02),
              const _SubtotalList(),
              SizedBox(height: screenHeight * 0.02),
              const _NextPageBtn(),
            ],
          ),
        ),
      ),
    );
  }
}

class _TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.chevron_left,
            color: Colors.black,
            size: 40.0,
          ),
        ),
        SizedBox(
          width: screenWidth * 0.28,
        ),
        Text(
          'Delivery',
          style: BookTextStyle.heading_2.copyWith(fontSize: 18.0),
        ),
      ],
    );
  }
}

class _StepperIcons extends StatelessWidget {
  // const _StepperIcons({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: BookFanColors.burgundy,
          maxRadius: 14.0,
          child: Icon(
            Icons.confirmation_number_outlined,
            color: BookFanColors.white,
            size: 18.0,
          ),
        ),
        SizedBox(
          width: screenWidth * 0.01,
        ),
        SizedBox(
          width: screenWidth * 0.07,
          child: Divider(
            color: BookFanColors.burgundy,
            thickness: 3,
          ),
        ),
        SizedBox(
          width: screenWidth * 0.01,
        ),
        CircleAvatar(
          backgroundColor: BookFanColors.burgundy,
          maxRadius: 14.0,
          child: Icon(
            Icons.directions_bus,
            color: BookFanColors.white,
            size: 18.0,
          ),
        ),
        SizedBox(
          width: screenWidth * 0.01,
        ),
        SizedBox(
          width: screenWidth * 0.07,
          child: Divider(
            color: BookFanColors.gray,
            thickness: 3,
          ),
        ),
        SizedBox(
          width: screenWidth * 0.01,
        ),
        CircleAvatar(
          backgroundColor: BookFanColors.white,
          maxRadius: 14.0,
          child: Icon(
            Icons.card_giftcard_outlined,
            color: BookFanColors.gray,
            size: 22.0,
          ),
        ),
      ],
    );
  }
}

class _NextPageBtn extends StatefulWidget {
  const _NextPageBtn({Key? key}) : super(key: key);

  @override
  __NextPageBtnState createState() => __NextPageBtnState();
}

class __NextPageBtnState extends State<_NextPageBtn> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: screenWidth,
      height: screenHeight * 0.06,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Delivery(),
            ),
          );
        },
        child: Text(
          'Next',
          style: BookTextStyle.buttonText
              .copyWith(fontSize: 14.0, fontWeight: FontWeight.w300),
        ),
        style: ElevatedButton.styleFrom(
          primary: BookFanColors.burgundy,
          padding: const EdgeInsets.all(2.0),
          elevation: 1.0,
        ),
      ),
    );
  }
}

class _DeliveryList extends StatefulWidget {
  const _DeliveryList({Key? key}) : super(key: key);

  @override
  __DeliveryListState createState() => __DeliveryListState();
}

class __DeliveryListState extends State<_DeliveryList> {
  List<Map<String, dynamic>>? deliveryCards = [
    {
      'deliveryType': 'Courier Delivery',
      'details': 'Shipping cost GHS 20. Free shipping for orders of GHS 10.',
      'select': false,
      'button_index': 1
    },
    {
      'deliveryType': 'Pickup Delivery',
      'details': 'Allow notifications to know when to pickup your delivery',
      'select': false,
      'button_index': 1
    },
    {
      'deliveryType': 'Postal Delivery',
      'details': 'Shipping cost GHS 200. Free shipping for orders of GHS 10.',
      'select': false,
      'button_index': 1
    },
  ];
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        ...deliveryCards!
            .map(
              (cards) => [
                GestureDetector(
                  child: Container(
                    width: screenWidth,
                    height: screenHeight * 0.13,
                    decoration: BoxDecoration(
                      color: BookFanColors.gray.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                cards['deliveryType'] ?? '',
                                // 'Courier Delivery',
                                style: BookTextStyle.bodyTextBlk.copyWith(
                                    color: BookFanColors.dark,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: screenHeight * 0.01,
                              ),
                              SizedBox(
                                width: screenWidth * 0.5,
                                child: Text(
                                  cards['details'] ?? '',
                                  // 'Shipping cost GHS 20. Free shipping for orders of GHS 10.',
                                  overflow: TextOverflow.clip,
                                  style: BookTextStyle.bodyTextBlk.copyWith(
                                      color: BookFanColors.dark,
                                      fontSize: 12.0),
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            child: Icon(
                              Icons.circle_outlined,
                              color: BookFanColors.dark.withOpacity(0.6),
                              size: 30.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
              ],
            )
            .expand((element) => element)
            .toList()
      ],
    );
    // );
  }
}

class _SubtotalList extends StatelessWidget {
  const _SubtotalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>>? totalList = [
      {
        'description': 'Subtotal',
        'amount': 'GHS 20',
      },
      {
        'description': 'Discount',
        'amount': 'GHS 20',
      },
      {
        'description': 'Subtotal',
        'amount': 'GHS 20',
      },
      {
        'description': 'Shipping',
        'amount': 'GHS 20',
      },
      {
        'description': 'Total',
        'amount': 'GHS 20',
      },
    ];
    return Column(
      children: [
        ...totalList
            .map(
              (list) => [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "${list['description']} :",
                      style: BookTextStyle.heading_3.copyWith(
                          fontSize: 15.0, fontWeight: FontWeight.w200),
                    ),
                    Text(
                      list['amount'],
                      style: BookTextStyle.heading_3.copyWith(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w200,
                          color: BookFanColors.gray),
                    ),
                  ],
                ),
                Divider(),
              ],
            )
            .expand((element) => element)
            .toList()
      ],
    );
  }
}
