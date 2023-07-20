import 'package:control_style/control_style.dart';
import 'package:flutter/material.dart';
import '../styles/color_style.dart';
import '../styles/text_style.dart';
import '../widgets/search_bar.dart';

class Categories {
  String assetImage;
  String name;
  Categories({required this.assetImage, required this.name});
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final outlinedShape = DecoratedOutlinedBorder(
      child: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    );

    List<Categories> categories = [
      Categories(assetImage: 'assets/healthy_food.png', name: 'Vegetables'),
      Categories(assetImage: 'assets/fruit.png', name: 'Fruits'),
      Categories(assetImage: 'assets/nutrition.png', name: 'Milk & Eggs'),
      Categories(assetImage: 'assets/juice.png', name: 'Drinks')
    ];

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const GrocerySearchBar(),
            const SizedBox(height: 30),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Categories',
                  style: textStyle14BlackColorBold,
                ),
                Text(
                  'See All',
                  style: textStyle14PrimaryColorBold,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: categories
                    .map((category) => _cardCategories(category))
                    .toList()),
            const SizedBox(height: 30),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Deals',
                  style: textStyle14BlackColorBold,
                ),
                Text(
                  'See All',
                  style: textStyle14PrimaryColorBold,
                ),
              ],
            ),
            const SizedBox(height: 10),
            Card(
              color: greenCyan,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '50% OFF',
                          style: textStyle16BlackColorBold,
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'On Grocery Combo Packs',
                          style: textStyle14BlackColorRegular,
                        ),
                        const SizedBox(height: 10),
                        TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: primaryColor,
                            foregroundColor: whiteColor,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 6, vertical: 0),
                            textStyle: const TextStyle(
                                fontSize: 11, fontWeight: FontWeight.w500),
                          ),
                          onPressed: () {},
                          child: const Text('Order Now'),
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/fruits_and_vegetables.png',
                      height: 90,
                      width: 90,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _cardCategories(Categories categories) {
    return Column(
      children: [
        Card(
          color: greenCyan,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              categories.assetImage,
              height: 40,
              width: 40,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          categories.name,
          style: textStyle14IronSideGreyColorRegular,
        ),
      ],
    );
  }
}



// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     final width = MediaQuery.of(context).size.width;
//     final height = MediaQuery.of(context).size.height;

//     return  Scaffold(
//       body: Stack(
//         children: [
//           //Lets start first creating Background of the App
//           Container(
//             decoration: const BoxDecoration(
//              color: primaryColor
//             ),
//           ),

//           //Now lets make the Navigation menu
//           SideBarLayout(),
//         ],
//       ),
//     );
//   }
// }