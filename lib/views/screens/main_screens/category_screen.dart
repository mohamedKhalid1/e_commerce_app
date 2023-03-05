import 'package:e_commerce_app/views/widgets/main_screens_widgets/grid_view_categories.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFFC4C4C4),
              Colors.white,
            ],
          )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10, bottom: 40),
                child: Text(
                  "Category",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              const GridViewCategories(),
            ],
          )),
    );
  }
}
