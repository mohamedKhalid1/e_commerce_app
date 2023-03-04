import 'package:e_commerce_app/views/widgets/main_screens_widgets/grid_view_categories.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          color: const Color(0xFFFBFCFF), child: GridViewCategories()),
    );
  }
}
