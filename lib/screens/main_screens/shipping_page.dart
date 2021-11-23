import 'package:book_store/styles/export_styles.dart';
import 'package:flutter/material.dart';

import 'delivery.dart';
import 'navigation_screens.dart';

class Shipping extends StatefulWidget {
  const Shipping({Key? key}) : super(key: key);

  @override
  _ShippingState createState() => _ShippingState();
}

class _ShippingState extends State<Shipping> {
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
              _SubTotalCard(),
              SizedBox(height: screenHeight * 0.04),
              _DeliveryForm(),
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
    double screenHeight = MediaQuery.of(context).size.height;
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
          'Shipping',
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
          backgroundColor: BookFanColors.white,
          maxRadius: 14.0,
          child: Icon(
            Icons.directions_bus,
            color: BookFanColors.gray,
            size: 22.0,
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

class _SubTotalCard extends StatelessWidget {
  // const _SubTotalCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth,
      height: screenHeight * 0.14,
      decoration: BoxDecoration(
        color: BookFanColors.burgundy.withOpacity(0.8),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '2 Products, 2.1kg',
                  style: BookTextStyle.bodyTextBlk
                      .copyWith(color: BookFanColors.white, fontSize: 16.0),
                ),
                Text(
                  'GHS 200.04',
                  style: BookTextStyle.bodyTextBlk
                      .copyWith(color: BookFanColors.white, fontSize: 16.0),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            Divider(
              color: BookFanColors.white,
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Subtotal: ',
                  style: BookTextStyle.bodyTextBlk
                      .copyWith(color: BookFanColors.white, fontSize: 16.0),
                ),
                Text(
                  'GHS 200.04',
                  style: BookTextStyle.bodyTextBlk
                      .copyWith(color: BookFanColors.white, fontSize: 16.0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _DeliveryForm extends StatefulWidget {
  const _DeliveryForm({Key? key}) : super(key: key);

  @override
  __DeliveryFormState createState() => __DeliveryFormState();
}

class __DeliveryFormState extends State<_DeliveryForm> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Recipient Contact',
                style: BookTextStyle.heading_3.copyWith(fontSize: 16.0),
                textAlign: TextAlign.left,
              ),
            ],
          ),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          _RecipientCode(),
          _RecipientLastName(),
          _RecipientEmail(),
          _RecipientTel(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Delivery City',
                style: BookTextStyle.heading_3.copyWith(fontSize: 16.0),
                textAlign: TextAlign.left,
              ),
            ],
          ),
          _CityDropDown(),
          _NextPageBtn(),
        ],
      ),
    );
  }
}

class _RecipientCode extends StatefulWidget {
  // const _RecipientCode({Key? key}) : super(key: key);

  @override
  __RecipientCodeState createState() => __RecipientCodeState();
}

class __RecipientCodeState extends State<_RecipientCode> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: screenWidth,
      height: screenHeight * 0.07,
      child: TextFormField(
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.text,
        style: BookTextStyle.formTexts,
        cursorColor: BookFanColors.burgundy,
        cursorWidth: screenWidth * 0.04,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(
            top: screenHeight * 0.04,
            left: screenWidth * 0.04,
          ),
          hintStyle: BookTextStyle.synopsisText,
          hintText: 'Receipient Name',
          filled: true,
          fillColor: Colors.grey.shade200,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}

class _RecipientLastName extends StatefulWidget {
  // const _RecipientCode({Key? key}) : super(key: key);

  @override
  __RecipientLastNameState createState() => __RecipientLastNameState();
}

class __RecipientLastNameState extends State<_RecipientLastName> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: screenWidth,
      height: screenHeight * 0.07,
      child: TextFormField(
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.text,
        style: BookTextStyle.formTexts,
        cursorColor: BookFanColors.burgundy,
        cursorWidth: screenWidth * 0.04,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(
            top: screenHeight * 0.04,
            left: screenWidth * 0.04,
          ),
          hintStyle: BookTextStyle.synopsisText,
          hintText: 'Receipient Surname',
          filled: true,
          fillColor: Colors.grey.shade200,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}

class _RecipientEmail extends StatefulWidget {
  // const _RecipientCode({Key? key}) : super(key: key);

  @override
  __RecipientEmailState createState() => __RecipientEmailState();
}

class __RecipientEmailState extends State<_RecipientEmail> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: screenWidth,
      height: screenHeight * 0.07,
      child: TextFormField(
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.text,
        style: BookTextStyle.formTexts,
        cursorColor: BookFanColors.burgundy,
        cursorWidth: screenWidth * 0.04,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(
            top: screenHeight * 0.04,
            left: screenWidth * 0.04,
          ),
          hintStyle: BookTextStyle.synopsisText,
          hintText: 'Receipient Email',
          filled: true,
          fillColor: Colors.grey.shade200,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}

class _RecipientTel extends StatefulWidget {
  // const _RecipientCode({Key? key}) : super(key: key);

  @override
  __RecipientTelState createState() => __RecipientTelState();
}

class __RecipientTelState extends State<_RecipientTel> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: screenWidth,
      height: screenHeight * 0.1,
      child: TextFormField(
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.text,
        style: BookTextStyle.formTexts,
        cursorColor: BookFanColors.burgundy,
        cursorWidth: screenWidth * 0.04,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(
            top: screenHeight * 0.04,
            left: screenWidth * 0.04,
          ),
          hintStyle: BookTextStyle.synopsisText,
          hintText: 'Receipient Telephone',
          filled: true,
          fillColor: Colors.grey.shade200,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}

class _CityDropDown extends StatefulWidget {
  const _CityDropDown({Key? key}) : super(key: key);

  @override
  __CityDropDownState createState() => __CityDropDownState();
}

class __CityDropDownState extends State<_CityDropDown> {
  List<dynamic> cities = ['Accra', 'London', 'El-Salvador'];
  String? _selectedCity;
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: screenWidth,
      height: screenHeight * 0.1,
      child: DropdownButtonFormField(
        value: _selectedCity,
        isExpanded: true,
        onChanged: (dynamic value) {
          setState(() {
            _selectedCity = value;
          });
        },
        items: cities.map((dynamic city) {
          return DropdownMenuItem(
            value: city,
            child: Text(
              city,
              style: BookTextStyle.synopsisText,
            ),
          );
        }).toList(),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(
            top: screenHeight * 0.04,
            left: screenWidth * 0.04,
          ),
          hintStyle: BookTextStyle.synopsisText,
          hintText: 'Choose a City',
          filled: true,
          fillColor: Colors.grey.shade200,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
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
