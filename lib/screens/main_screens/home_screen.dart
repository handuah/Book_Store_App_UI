import 'package:flutter/material.dart';
import 'package:book_store/styles/export_styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            SizedBox(
              height: screenHeight * 0.02,
            ),
            const _SearchField(),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            const _ImageCarouselCard(),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Stories',
                  style: BookTextStyle.heading_2,
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            const _Stories(),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'New Arrivals',
                  style: BookTextStyle.heading_2,
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            const _NewArrivals(),
            SizedBox(
              height: screenHeight * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}

class _SearchField extends StatefulWidget {
  const _SearchField({Key? key}) : super(key: key);

  @override
  __SearchFieldState createState() => __SearchFieldState();
}

class __SearchFieldState extends State<_SearchField> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: screenWidth,
      height: screenHeight * 0.07,
      child: TextFormField(
        textInputAction: TextInputAction.search,
        keyboardType: TextInputType.text,
        style: BookTextStyle.formTexts,
        cursorColor: BookFanColors.burgundy,
        cursorWidth: screenWidth * 0.04,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(
            top: screenHeight * 0.04,
            // bottom: screenHeight * 0.04,
            left: screenWidth * 0.04,
          ),
          prefixIcon: Padding(
            padding: EdgeInsets.only(
              left: screenWidth * 0.01,
            ),
            child: Icon(
              Icons.search,
              color: BookFanColors.gray,
            ),
          ),
          suffixIcon: Padding(
            padding: EdgeInsets.only(
              left: screenWidth * 0.01,
            ),
            child: Icon(
              Icons.mic,
              color: BookFanColors.gray,
            ),
          ),
          hintStyle: BookTextStyle.synopsisText,
          hintText: 'Search',
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

class _ImageCarouselCard extends StatelessWidget {
  const _ImageCarouselCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          width: screenWidth,
          height: screenHeight * 0.24,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.green,
            image: const DecorationImage(
              image: NetworkImage(
                'https://www.incimages.com/uploaded_files/image/1920x1080/getty_506755198_362244.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Opacity(
          opacity: 0.8,
          child: Container(
            width: screenWidth,
            height: screenHeight * 0.24,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.black54,
            ),
          ),
        ),
        Positioned(
          top: screenHeight * 0.1,
          left: screenWidth * 0.16,
          child: Text(
            'The best book about self love',
            style: BookTextStyle.homeTextWhite,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

class _Stories extends StatelessWidget {
  const _Stories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      // color: Colors.green,
      width: screenWidth,
      height: screenHeight * 0.2,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
          height: screenHeight * 0.2,
          width: screenWidth * 0.3,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10.0),
            image: const DecorationImage(
              image: NetworkImage(
                  'https://i.pinimg.com/originals/67/18/22/671822c2f63dd5f65d8fd15c9710420b.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Container(
                height: screenHeight * 0.2,
                width: screenWidth * 0.3,
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Books for Girls',
                    style: BookTextStyle.cardSmlText,
                  ),
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

class _NewArrivals extends StatefulWidget {
  const _NewArrivals({Key? key}) : super(key: key);

  @override
  __NewArrivalsState createState() => __NewArrivalsState();
}

class __NewArrivalsState extends State<_NewArrivals> {
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
                        onPressed: () {},
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
