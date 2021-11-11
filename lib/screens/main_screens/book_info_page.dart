import 'package:book_store/styles/export_styles.dart';
import 'package:flutter/material.dart';

import 'navigation_screens.dart';

class BookInfo extends StatefulWidget {
  const BookInfo({Key? key}) : super(key: key);

  @override
  _BookInfoState createState() => _BookInfoState();
}

class _BookInfoState extends State<BookInfo> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: BookFanColors.white,
      bottomNavigationBar: const BottomNav(),
      body: SafeArea(
        top: true,
        child: SizedBox(
          height: screenHeight,
          width: screenWidth,
          child: ListView(
            children: [
              Container(
                height: screenHeight * 0.38,
                width: screenWidth,
                color: Colors.red,
                child: Stack(
                  // fit: StackFit.passthrough,
                  children: [
                    Image.network(
                      'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1449868701l/11127._SY475_.jpg',
                      height: screenHeight * 0.38,
                      width: screenWidth,
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.chevron_left,
                          color: BookFanColors.white,
                          size: 40.0,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.55,
                width: screenWidth,
                // color: Colors.green,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: screenHeight * 0.02,
                      ),
                      Text(
                        'The Chronicles of Narnia',
                        style: BookTextStyle.heading_2,
                        overflow: TextOverflow.clip,
                      ),
                      SizedBox(
                        height: screenHeight * 0.01,
                      ),
                      Text(
                        'C.S. Lewis',
                        style: BookTextStyle.authorNameDetailPgTXT,
                        overflow: TextOverflow.clip,
                      ),
                      SizedBox(
                        height: screenHeight * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.star_rate_rounded,
                                color: Colors.yellow,
                                size: 18.0,
                              ),
                              Icon(
                                Icons.star_rate_rounded,
                                color: Colors.yellow,
                                size: 18.0,
                              ),
                              Icon(
                                Icons.star_rate_rounded,
                                color: Colors.yellow,
                                size: 18.0,
                              ),
                              Icon(
                                Icons.star_rate_rounded,
                                color: Colors.yellow,
                                size: 18.0,
                              ),
                              Icon(
                                Icons.star_half,
                                color: Colors.yellow,
                                size: 18.0,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: screenWidth * 0.02,
                          ),
                          Text(
                            '4.6',
                            style: BookTextStyle.bodyTextBlk.copyWith(
                              color: Colors.yellow[700],
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0,
                            ),
                          ),
                          SizedBox(
                            width: screenWidth * 0.08,
                          ),
                          Text(
                            '15 reviewers',
                            style: BookTextStyle.authorNameText.copyWith(
                              color: BookFanColors.gray,
                              fontWeight: FontWeight.w500,
                              fontSize: 10.0,
                            ),
                          ),
                          SizedBox(
                            width: screenWidth * 0.14,
                          ),
                          Text(
                            '987-2212-0000',
                            style: BookTextStyle.authorNameText,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenHeight * 0.02,
                      ),
                      const _BookTypeBtns(),
                      SizedBox(
                        height: screenHeight * 0.02,
                      ),
                      const _Synopsis(),
                      SizedBox(
                        height: screenHeight * 0.02,
                      ),
                      const _BtnRow(),
                      SizedBox(
                        height: screenHeight * 0.02,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _BookTypeBtns extends StatefulWidget {
  const _BookTypeBtns({Key? key}) : super(key: key);

  @override
  __BookTypeBtnsState createState() => __BookTypeBtnsState();
}

class __BookTypeBtnsState extends State<_BookTypeBtns> {
  List<Map<String, String>>? bookTypes = [
    {'bookType': 'Electronic', 'price': 'GHC 50'},
    {'bookType': 'Hard Cover', 'price': 'GHC 150'},
    {'bookType': 'Paperback', 'price': 'GHC 75'},
  ];

  List<bool> selected = [
    false,
    true,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ...bookTypes!
            .map(
              (u) => [
                SizedBox(
                  height: screenHeight * 0.07,
                  width: screenWidth * 0.3,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Text('ther'),
                        Text(
                          u['bookType'] ?? '',
                          style: BookTextStyle.synopsisText.copyWith(
                            color: BookFanColors.gray,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          u['price']!,
                          style: BookTextStyle.synopsisText.copyWith(
                              color: BookFanColors.gray, fontSize: 12.0),
                        ),
                      ],
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: BookFanColors.lightgray,
                      padding:
                          EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      elevation: 0.0,
                    ),
                  ),
                ),
              ],
            )
            .expand((element) => element)
            .toList()
      ],
    );
  }
}

class _Synopsis extends StatelessWidget {
  const _Synopsis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: screenHeight * 0.2,
      width: screenWidth,
      // color: Colors.green,
      child: Text(
        'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\n\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.',
        overflow: TextOverflow.clip,
        style: BookTextStyle.synopsisText.copyWith(
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class _BtnRow extends StatefulWidget {
  const _BtnRow({Key? key}) : super(key: key);

  @override
  __BtnRowState createState() => __BtnRowState();
}

class __BtnRowState extends State<_BtnRow> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: screenWidth * 0.12,
          height: screenHeight * 0.06,
          child: ElevatedButton(
            onPressed: () {},
            child: Icon(
              Icons.bookmark_outline_outlined,
              color: BookFanColors.dark,
              size: 26.0,
            ),
            style: ElevatedButton.styleFrom(
              primary: BookFanColors.gray.withOpacity(0.01),
              padding: const EdgeInsets.all(2.0),
              elevation: 1.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
            ),
          ),
        ),
        SizedBox(
          width: screenWidth * 0.04,
        ),
        SizedBox(
          width: screenWidth * 0.74,
          height: screenHeight * 0.06,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BookInfo(),
                ),
              );
            },
            child: Text(
              'Buy Now',
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
