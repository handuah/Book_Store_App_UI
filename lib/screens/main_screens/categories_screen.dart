import 'package:flutter/material.dart';
import 'package:book_store/styles/export_styles.dart';

import 'export_category_pages.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
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
              height: screenHeight * 0.01,
            ),
            const _TypeButtons(),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Divider(
              color: BookFanColors.lightgray,
              thickness: 2.0,
            ),
            const _CategoryListTile(),
            SizedBox(
              height: screenHeight * 0.04,
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

class _TypeButtons extends StatefulWidget {
  const _TypeButtons({Key? key}) : super(key: key);

  @override
  __TypeButtonsState createState() => __TypeButtonsState();
}

class __TypeButtonsState extends State<_TypeButtons> {
  List<String> categoryBtnTexts = [
    'Recommendations',
    'New',
    'Genres',
    'BestSeller',
    'Favourites'
  ];

  bool isSelected = false;

  List<bool> cateryBtnBools = [
    false,
    false,
    true,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: screenHeight * 0.04,
      width: screenWidth,
      // color: Colors.green,
      child: SizedBox(
        height: screenHeight * 0.04,
        width: screenWidth,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => ElevatedButton(
            child: Text(
              categoryBtnTexts[index],
              style: cateryBtnBools[index]
                  ? BookTextStyle.catButtonTextWhite
                  : BookTextStyle.catButtonText,
            ),
            onPressed: () {
              setState(() {
                cateryBtnBools[index] = !cateryBtnBools[index];
              });
            },
            style: ElevatedButton.styleFrom(
              primary: cateryBtnBools[index]
                  ? BookFanColors.burgundy
                  : BookFanColors.lightgray,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
            ),
          ),
          separatorBuilder: (context, index) => SizedBox(
            width: screenWidth * 0.04,
          ),
          itemCount: 5,
        ),
      ),
    );
  }
}

class _CategoryListTile extends StatefulWidget {
  const _CategoryListTile({Key? key}) : super(key: key);

  @override
  __CategoryListTileState createState() => __CategoryListTileState();
}

class __CategoryListTileState extends State<_CategoryListTile> {
  List<String> categories = [
    'Fiction',
    'Non-fiction',
    'Children Literature',
    'Business Literature',
    'Educational Literature',
    'Psychology',
    'Comics and Manga',
    'Professional Literature',
    'Electronic Books'
  ];

  List<IconData> categoryIcons = [
    Icons.book_outlined,
    Icons.read_more_outlined,
    Icons.child_care_outlined,
    Icons.card_giftcard_outlined,
    Icons.book_online_outlined,
    Icons.biotech_outlined,
    Icons.mood_bad_outlined,
    Icons.monetization_on_outlined,
    Icons.qr_code,
  ];

  List<bool> listBools = [
    false,
    false,
    true,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: screenHeight * 0.65,
      width: screenWidth,
      // color: Colors.red,
      child: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          selectedTileColor: BookFanColors.burgundy.withOpacity(0.5),
          selected: listBools[index],
          enabled: true,
          onTap: () {
            setState(() {
              listBools[index] = !listBools[index];
            });
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Fiction(),
              ),
            );
          },
          leading: CircleAvatar(
            backgroundColor: BookFanColors.burgundy,
            child: Icon(
              // Icons.file_copy,
              categoryIcons[index],
              color: BookFanColors.white,
              size: 20.0,
            ),
            maxRadius: 20.0,
          ),
          title: Text(
            // 'Favourites',
            categories[index],
            style: BookTextStyle.categoryListText,
          ),
        ),
        itemCount: categories.length,
        separatorBuilder: (context, index) => Divider(
          color: BookFanColors.lightgray,
          thickness: 2.0,
        ),
      ),
    );
  }
}
