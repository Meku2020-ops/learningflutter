import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learningflutter/images/icons.dart';
import 'package:learningflutter/models/category_model.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<CategoryModel> getCategories2 = [];
  void _getCategories() {
    getCategories2 = CategoryModel.categories;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: appBar(), body: column());
  }

  Column column() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textField(),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Category',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 150,
              color: Colors.green,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: getCategories2.length,
                itemBuilder: (context, index) {
                  return Container();
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  Container textField() {
    return Container(
      margin: EdgeInsets.only(top: 50, left: 30, right: 30, bottom: 50),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF030303).withOpacity(0.5),
            blurRadius: 40,
            spreadRadius: 0.0,
          ),
        ],
      ),

      child: TextField(
        textAlign: TextAlign.left,
        decoration: InputDecoration(
          alignLabelWithHint: true,
          hintText: 'Search',
          filled: true,
          fillColor: const Color.fromARGB(255, 214, 221, 224),
          contentPadding: EdgeInsets.all(10),

          prefixIcon: Padding(
            padding: const EdgeInsets.all(20),
            child: SvgPicture.asset(
              IconsAsset.searchIcon,
              height: 20,
              width: 20,
            ),
          ),
          suffixIcon: SizedBox(
            width: 100,
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  VerticalDivider(
                    color: Color.fromARGB(255, 0, 0, 0),
                    indent: 10,
                    endIndent: 10,
                    thickness: 0.2,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: SvgPicture.asset(
                      IconsAsset.filterIcon,
                      height: 20,
                      width: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Text(
        'breakfast',
        style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      centerTitle: true,
      leading: GestureDetector(
        onTap: () {},
        child: Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(color: Colors.white),
          child: SvgPicture.asset(IconsAsset.arrowIcon, height: 20, width: 20),
        ),
      ),

      actions: [
        GestureDetector(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(color: Colors.white),
            child: SvgPicture.asset(
              IconsAsset.verticalDots,
              height: 20,
              width: 20,
            ),
          ),
        ),
      ],
    );
  }
}
