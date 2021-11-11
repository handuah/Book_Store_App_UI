import 'package:book_store/styles/export_styles.dart';
import 'package:flutter/material.dart';

import 'export_category_pages.dart';
import 'navigation_screens.dart';

class Fiction extends StatefulWidget {
  const Fiction({Key? key}) : super(key: key);

  @override
  _FictionState createState() => _FictionState();
}

class _FictionState extends State<Fiction> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: const BottomNav(),
      body: SafeArea(
        top: true,
        child: Container(
          height: screenHeight,
          width: screenWidth,
          color: Colors.white,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
            children: [
              _TopBar(),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Detectives',
                    style: BookTextStyle.heading_2,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'View All',
                      style: BookTextStyle.viewAllBtnText,
                    ),
                  ),
                ],
              ),
              const _Detectives(),
              SizedBox(
                height: screenHeight * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Fantasy',
                    style: BookTextStyle.heading_2,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'View All',
                      style: BookTextStyle.viewAllBtnText,
                    ),
                  ),
                ],
              ),
              const _Detectives(),
            ],
          ),
        ),
      ),
    );
  }
}

class _TopBar extends StatelessWidget {
  // const _TopBar({
  //   Key? key,
  //   required this.screenWidth,
  // }) : super(key: key);

  // final double screenWidth;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {},
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
          'Fiction',
          style: BookTextStyle.heading_2,
        ),
        SizedBox(
          width: screenWidth * 0.28,
        ),
        GestureDetector(
          onTap: () {},
          child: const Icon(
            Icons.search,
            color: Colors.black,
            size: 30.0,
          ),
        ),
      ],
    );
  }
}

class _Detectives extends StatefulWidget {
  const _Detectives({Key? key}) : super(key: key);

  @override
  __DetectivesState createState() => __DetectivesState();
}

class __DetectivesState extends State<_Detectives> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      // color: Colors.green,
      width: screenWidth,
      height: screenHeight * 0.34,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
          height: screenHeight * 0.34,
          width: screenWidth * 0.4,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: Colors.black12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screenHeight * 0.02,
              ),
              Center(
                child: Container(
                  height: screenHeight * 0.18,
                  width: screenWidth * 0.26,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1449868701l/11127._SY475_.jpg'),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.005,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
                child: Text(
                  'The Chronicles of Narnia',
                  style: BookTextStyle.heading_3,
                  overflow: TextOverflow.fade,
                ),
              ),
              SizedBox(
                height: screenHeight * 0.005,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
                child: Text(
                  'C.S. Lewis',
                  style: BookTextStyle.authorNameText,
                  overflow: TextOverflow.fade,
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: screenHeight * 0.005,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
                child: Text(
                  'GHC 50',
                  style: BookTextStyle.heading_3,
                  overflow: TextOverflow.fade,
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: screenHeight * 0.005,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: screenWidth * 0.08,
                      height: screenHeight * 0.03,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.bookmark_outline_outlined,
                          color: BookFanColors.dark,
                          size: 18.0,
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: BookFanColors.gray.withOpacity(0.01),
                          padding: const EdgeInsets.all(2.0),
                          elevation: 1.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: screenWidth * 0.2,
                      height: screenHeight * 0.03,
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
                          'Buy',
                          style: BookTextStyle.buttonText,
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: BookFanColors.burgundy,
                          padding: const EdgeInsets.all(2.0),
                          elevation: 1.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        separatorBuilder: (context, index) =>
            SizedBox(width: screenWidth * 0.04),
        itemCount: 6,
      ),
    );
  }
}
