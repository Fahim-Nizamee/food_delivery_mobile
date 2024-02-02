import 'package:flutter/material.dart';
import 'package:food_delivery/pages/details.dart';
import 'package:food_delivery/widget/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool iceCream = false, pizza = false, salad = false, burger = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(
            top: 60.0,
          ),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    margin: const EdgeInsets.only(left: 20.0),
                    child: Text("Hello Fahim,",
                        style: AppWidget.boldTextFieldStyle())),
                Container(
                  margin: const EdgeInsets.only(right: 20.0),
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8)),
                  child: const Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Delicious Food",
                style: AppWidget.headerTextFieldStyle(),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Discover and Get Great Food",
                style: AppWidget.lightTextFieldStyle(),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
                margin: const EdgeInsets.only(right: 20.0, left: 20.0),
                child: showItem()),
            const SizedBox(
              height: 30.0,
            ),
            Container(
              child: showSlider(),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Container(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "images/salad2.png",
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width/2,
                              child: Text(
                            "Chickpea Salad",
                            style: AppWidget.semiBoldTextFieldStyle(),
                          )),
                          const SizedBox(height: 5.0,),
                          SizedBox(
                            width: MediaQuery.of(context).size.width/2,
                              child: Text(
                            "Honey goat cheese and sweetness of honey",
                            style: AppWidget.lightTextFieldStyle(),
                          )),
                          const SizedBox(height: 5.0,),
                          SizedBox(
                            width: MediaQuery.of(context).size.width/2,
                              child: Text(
                            "\$28",
                            style: AppWidget.semiBoldTextFieldStyle(),
                          )),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
                        height: 20.0,
                      ),
            Container(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "images/salad2.png",
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width/2,
                              child: Text(
                            "Chickpea Salad",
                            style: AppWidget.semiBoldTextFieldStyle(),
                          )),
                          const SizedBox(height: 5.0,),
                          SizedBox(
                            width: MediaQuery.of(context).size.width/2,
                              child: Text(
                            "Honey goat cheese and sweetness of honey",
                            style: AppWidget.lightTextFieldStyle(),
                          )),
                          const SizedBox(height: 5.0,),
                          SizedBox(
                            width: MediaQuery.of(context).size.width/2,
                              child: Text(
                            "\$28",
                            style: AppWidget.semiBoldTextFieldStyle(),
                          )),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }

  Widget showSlider() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        margin: const EdgeInsets.only(top: 5.0, bottom: 7.0),
        child: Row(
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=> const Details()));
              },
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: const EdgeInsets.all(14),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "images/salad2.png",
                          height: 150.0,
                          width: 150.0,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          "Viggie Taco Hash",
                          style: AppWidget.semiBoldTextFieldStyle(),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "Fresh and Healthy",
                          style: AppWidget.lightTextFieldStyle(),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "\$25",
                          style: AppWidget.semiBoldTextFieldStyle(),
                        ),
                      ]),
                ),
              ),
            ),
            const SizedBox(
              width: 15.0,
            ),
            Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                padding: const EdgeInsets.all(14),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "images/salad2.png",
                        height: 150.0,
                        width: 150.0,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        "Mix Veg Salad",
                        style: AppWidget.semiBoldTextFieldStyle(),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "Spicy with Onion",
                        style: AppWidget.lightTextFieldStyle(),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "\$30",
                        style: AppWidget.semiBoldTextFieldStyle(),
                      ),
                    ]),
              ),
            ),
            const SizedBox(
              width: 15.0,
            ),
            Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                padding: const EdgeInsets.all(14),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "images/salad2.png",
                        height: 150.0,
                        width: 150.0,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        "Viggie Taco Hash",
                        style: AppWidget.semiBoldTextFieldStyle(),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "Fresh and Healthy",
                        style: AppWidget.lightTextFieldStyle(),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "\$25",
                        style: AppWidget.semiBoldTextFieldStyle(),
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            iceCream = true;
            pizza = false;
            salad = false;
            burger = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: iceCream ? const Color.fromARGB(255, 218, 5, 93) : Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                "images/ice-cream.png",
                height: 40.0,
                width: 40.0,
                fit: BoxFit.cover,
                color: iceCream ? Colors.white : const Color.fromARGB(255, 218, 5, 93),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            iceCream = false;
            pizza = true;
            salad = false;
            burger = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: pizza ? const Color.fromARGB(255, 218, 5, 93) : Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                "images/pizza.png",
                height: 40.0,
                width: 40.0,
                fit: BoxFit.cover,
                color: pizza ? Colors.white : const Color.fromARGB(255, 218, 5, 93),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            iceCream = false;
            pizza = false;
            salad = true;
            burger = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: salad ? const Color.fromARGB(255, 218, 5, 93) : Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                "images/salad.png",
                height: 40.0,
                width: 40.0,
                fit: BoxFit.cover,
                color: salad ? Colors.white : const Color.fromARGB(255, 218, 5, 93),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            iceCream = false;
            pizza = false;
            salad = false;
            burger = true;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: burger ? const Color.fromARGB(255, 218, 5, 93) : Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                "images/burger.png",
                height: 40.0,
                width: 40.0,
                fit: BoxFit.cover,
                color: burger ? Colors.white : const Color.fromARGB(255, 218, 5, 93),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
