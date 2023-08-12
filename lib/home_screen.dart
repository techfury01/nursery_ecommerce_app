import 'package:flutter/material.dart';
import 'package:plant_ecom_app/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    int selectedCategory = 0;
    List categories = [
      "Plants",
      "Flowers",
      "Cacti",
      "Herbs",
      "Bamboo",
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFFAFCFF),
      body: Column(
        children: [
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //intro text
                const SizedBox(
                  width: 200,
                  child: Text.rich(
                    TextSpan(
                      text: "Let's Make our Lives ",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                      ),
                      children: [
                        TextSpan(
                          text: "Greener",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w900,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                //menu button
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFF105D5C),
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 16,
                    ),
                    child: menuIcon,
                  ),
                ),
              ],
            ),
          ),
          //categories
          SizedBox(
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                  ),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectedCategory = index;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: selectedCategory == index
                            ? const Color(0xFF58DA8C)
                            : Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 18,
                          vertical: 10,
                        ),
                        child: Center(
                          child: Text(
                            categories[index],
                            style: const TextStyle(),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          //category heading
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Plant Collections",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: const Icon(
                    Icons.arrow_forward,
                  ),
                ),
              ],
            ),
          ),
          //Products
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 25,
              ),
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: 280,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Image.asset(
                              "assets/plant_frame.png",
                            ),
                          ),
                          const Text(
                            "The Potted Head",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 15,
                            ),
                            child: SizedBox(
                              width: 250,
                              child: Text(
                                "Perfect for beginners or anyone looking for an easy-to-care-for plant",
                                style: TextStyle(),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          const Spacer(),
                          //Add to cart button
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            child: MaterialButton(
                              minWidth: double.infinity,
                              color: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 10,
                                ),
                                child: Row(
                                  children: [
                                    cartIcon,
                                    const SizedBox(width: 5),
                                    const Text(
                                      "Add to cart",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    const Spacer(),
                                    const Text(
                                      "\$50.00",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          //cart button
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: MaterialButton(
              color: const Color(0xFF58DA8C),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 2,
                  vertical: 10,
                ),
                child: Row(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Text(
                            "4",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Cart",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text("4 items"),
                      ],
                    ),
                    const Spacer(),
                    const Icon(Icons.arrow_forward),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
