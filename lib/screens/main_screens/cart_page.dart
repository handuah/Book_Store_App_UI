import 'package:book_store/styles/export_styles.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      top: true,
      child: SizedBox(
        height: screenHeight,
        width: screenWidth,
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.02,
          ),
          children: [
            Center(
              child: Text(
                'My Bag (3)',
                style: BookTextStyle.heading_2,
              ),
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            // _BookList(),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            const _BookList(),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            const _EnterPromoCode(),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            const _AccountDetails(),
          ],
        ),
      ),
    );
  }
}

class _BookList extends StatefulWidget {
  const _BookList({Key? key}) : super(key: key);

  @override
  __BookListState createState() => __BookListState();
}

class __BookListState extends State<_BookList> {
  List<String> keyValues = ['1', '2'];
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      // color: Colors.blue,
      height: screenHeight * 0.46,
      width: screenWidth,
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => Dismissible(
          key: Key(keyValues[index]),
          background: Container(
            color: Colors.green,
          ),
          secondaryBackground: Container(
            color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.delete,
                      color: BookFanColors.white,
                      size: 30.0,
                    ),
                    Text(
                      'Delete',
                      style: BookTextStyle.catButtonTextWhite.copyWith(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
              ],
            ),
          ),
          confirmDismiss: (swipedDirection) async {
            if (swipedDirection == DismissDirection.endToStart) {
              await showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Text(
                        'Are you sure you want to delete?',
                        style: BookTextStyle.heading_2.copyWith(fontSize: 20),
                      ),
                      actions: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              keyValues.removeAt(index);
                            });
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Yes',
                            style: BookTextStyle.buttonText,
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: BookFanColors.burgundy),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'No',
                            style: BookTextStyle.buttonText
                                .copyWith(color: BookFanColors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: BookFanColors.gray),
                        ),
                      ],
                    );
                  });
            }
          },
          child: SizedBox(
            height: screenHeight * 0.22,
            width: screenWidth,
            // color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: screenHeight,
                    width: screenWidth * 0.3,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10.0),
                      image: const DecorationImage(
                        image: NetworkImage(
                          'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1449868701l/11127._SY475_.jpg',
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.02,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'The Chronicles of Narnia',
                        style: BookTextStyle.heading_3.copyWith(fontSize: 16.0),
                      ),
                      SizedBox(
                        height: screenHeight * 0.01,
                      ),
                      Text(
                        'C.S. Lewis',
                        style: BookTextStyle.authorNameText
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: screenHeight * 0.01,
                      ),
                      Text(
                        '972-123-5678',
                        style: BookTextStyle.authorNameText
                            .copyWith(fontSize: 8.0),
                      ),
                      SizedBox(
                        height: screenHeight * 0.03,
                      ),
                      Text(
                        'GHS 200.0',
                        style: BookTextStyle.heading_3.copyWith(fontSize: 16.0),
                      ),
                      Text(
                        'Hardcover',
                        style: BookTextStyle.authorNameText,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: keyValues.length,
      ),
    );
  }
}

class _EnterPromoCode extends StatefulWidget {
  const _EnterPromoCode({Key? key}) : super(key: key);

  @override
  __EnterPromoCodeState createState() => __EnterPromoCodeState();
}

class __EnterPromoCodeState extends State<_EnterPromoCode> {
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
          hintText: 'Enter promo code',
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

class _AccountDetails extends StatefulWidget {
  const _AccountDetails({Key? key}) : super(key: key);

  @override
  __AccountDetailsState createState() => __AccountDetailsState();
}

class __AccountDetailsState extends State<_AccountDetails> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Subtotal:',
              style: BookTextStyle.heading_3
                  .copyWith(color: Colors.grey, fontSize: 14.0),
            ),
            Text(
              'GHS 200.0',
              style: BookTextStyle.heading_3
                  .copyWith(color: Colors.grey, fontSize: 14.0),
            ),
          ],
        ),
        SizedBox(
          height: screenHeight * 0.01,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Discount:',
              style: BookTextStyle.heading_3
                  .copyWith(color: Colors.red, fontSize: 14.0),
            ),
            Text(
              'GHS 200.0',
              style: BookTextStyle.heading_3
                  .copyWith(color: Colors.red, fontSize: 14.0),
            ),
          ],
        ),
        SizedBox(
          height: screenHeight * 0.01,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Total:',
              style: BookTextStyle.heading_3
                  .copyWith(color: BookFanColors.dark, fontSize: 14.0),
            ),
            Text(
              'GHS 200.0',
              style: BookTextStyle.heading_3
                  .copyWith(color: BookFanColors.dark, fontSize: 14.0),
            ),
          ],
        ),
        SizedBox(
          height: screenHeight * 0.02,
        ),
        SizedBox(
          width: screenWidth,
          height: screenHeight * 0.06,
          child: ElevatedButton(
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => const BookInfo(),
              //   ),
              // );
            },
            child: Text(
              'Checkout',
              style: BookTextStyle.buttonText
                  .copyWith(fontSize: 14.0, fontWeight: FontWeight.w300),
            ),
            style: ElevatedButton.styleFrom(
              primary: BookFanColors.burgundy,
              padding: const EdgeInsets.all(2.0),
              elevation: 1.0,
            ),
          ),
        ),
      ],
    );
  }
}
