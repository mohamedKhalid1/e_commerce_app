import 'package:flutter/material.dart';

class GridViewCategories extends StatelessWidget {
  const GridViewCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 1.2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 20),
            itemCount: 10,
            itemBuilder: (BuildContext ctx, index) {
              return Container(
                height: 165,
                width: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(9)),
                child: Column(
                  children: [
                    Image.asset(
                        "assets/images/home_screen/category_item_big.png",height: 111,width: 143,),
                    const Text("Snack",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
