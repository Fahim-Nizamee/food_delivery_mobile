import 'package:flutter/material.dart';
import 'package:food_delivery/widget/widget_support.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: const EdgeInsets.only(top: 60.0, left: 20.0, right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back_ios_new_outlined,
                    color: Colors.black),
              ),
              Image.asset(
                "images/salad2.png",
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.5,
                fit: BoxFit.fill,
              ),
              const SizedBox(
                height: 15.0,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mediterranean",
                        style: AppWidget.semiBoldTextFieldStyle(),
                      ),
                      Text(
                        "Chickpea Salad",
                        style: AppWidget.headerTextFieldStyle(),
                      ),
                    ],
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      if (a > 1) {
                        --a;
                      }

                      setState(() {});
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 218, 5, 93),
                          borderRadius: BorderRadius.circular(8)),
                      child: const Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    a.toString(),
                    style: AppWidget.semiBoldTextFieldStyle(),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      ++a;
                      setState(() {});
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 218, 5, 93),
                          borderRadius: BorderRadius.circular(8)),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Chickpeas are combined with juicy tomatoes, crisp cucumbers, and creamy avocados all tossed in an easy homemade lemon kissed dressing.",
                style: AppWidget.lightTextFieldStyle(),
                maxLines: 3,
              ),
              const SizedBox(
                height: 30.0,
              ),
              Row(
                children: [
                  Text(
                    "Delivery time",
                    style: AppWidget.semiBoldTextFieldStyle(),
                  ),
                  const SizedBox(
                    width: 25.0,
                  ),
                  const Icon(
                    Icons.alarm,
                    color: Color.fromARGB(255, 218, 5, 93),
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    "30 min",
                    style: AppWidget.semiBoldTextFieldStyle(),
                  )
                ],
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Price",
                          style: AppWidget.semiBoldTextFieldStyle(),
                        ),
                        Text(
                          "\$25",
                          style: AppWidget.headerTextFieldStyle(),
                        ),
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      padding: const EdgeInsets.only(top:8.0,bottom: 8.0,right: 20.0,left: 20.0),
                      decoration:
                          BoxDecoration(color: const Color.fromARGB(255, 218, 5, 93),borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        const Text(
                          "Add to cart",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontFamily: "Poppins",
                          ),
                        ),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.all(3.0),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 133, 3, 57),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.white,
                          ),
                        )
                      ]),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
