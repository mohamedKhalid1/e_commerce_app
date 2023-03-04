import 'package:e_commerce_app/views/widgets/authentication/textField_auth.dart';
import 'package:e_commerce_app/views/widgets/main_screens_widgets/grid_view_categories.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: const Color(0xFFFBFCFF),
        child: Column(
          children: [
            ListTile(
              leading: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: const Color(0xFF5EC401),
                      borderRadius: BorderRadius.circular(22)),
                  child: const Icon(Icons.location_on_outlined,
                      color: Colors.white)),
              title: Text("Your Location",
                  style: Theme.of(context).textTheme.bodyMedium),
              subtitle: Text(
                "32 Llanberis Close, Tonteg, CF38 1HR",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextFieldAuth(
                  textHint: "Search Anything",
                  prefixIconWidget: const Icon(Icons.search_outlined),
                  controller: searchController,
                  textInputType: TextInputType.name,
                  maxLength: 30),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset("assets/images/home_screen/offer.png"),
                Text(
                  "20% off on your\nfirst purchase",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Text(
                    "Categories",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Color(0xFF868889),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: 53,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFFE6F2EA),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Image.asset(
                              "assets/images/home_screen/category_item.png",
                              width: 17,
                              height: 25,
                            ),
                          ),
                          const Text(
                            "vegetables",
                            style: TextStyle(fontSize: 10,),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            GridViewCategories(),
          ],
        ),
      ),
    );
  }
}
