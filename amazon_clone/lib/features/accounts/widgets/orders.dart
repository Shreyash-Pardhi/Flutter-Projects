import 'package:amazon_clone/constants/global_variables.dart';
import 'package:amazon_clone/features/accounts/widgets/single_product.dart';
import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
//temp list for orders
  List list = [
    'https://imgs.search.brave.com/EvQ44E9EaUvF8EGw1L3_ByOL7R6QphK53pBH2DnMVqQ/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMudW5zcGxhc2gu/Y29tL3Bob3RvLTE1/OTA0MTA0MTM5ODkt/MzM1MTYyYjAxMzE0/P3E9ODAmdz0xMDAw/JmF1dG89Zm9ybWF0/JmZpdD1jcm9wJml4/bGliPXJiLTQuMC4z/Jml4aWQ9TTN3eE1q/QTNmREI4TUh4elpX/RnlZMmg4T1h4OFlY/TjFjeVV5TUhKdloz/eGxibnd3Zkh3d2ZI/eDhNQT09.jpeg',
    'https://imgs.search.brave.com/EvQ44E9EaUvF8EGw1L3_ByOL7R6QphK53pBH2DnMVqQ/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMudW5zcGxhc2gu/Y29tL3Bob3RvLTE1/OTA0MTA0MTM5ODkt/MzM1MTYyYjAxMzE0/P3E9ODAmdz0xMDAw/JmF1dG89Zm9ybWF0/JmZpdD1jcm9wJml4/bGliPXJiLTQuMC4z/Jml4aWQ9TTN3eE1q/QTNmREI4TUh4elpX/RnlZMmg4T1h4OFlY/TjFjeVV5TUhKdloz/eGxibnd3Zkh3d2ZI/eDhNQT09.jpeg',
    'https://imgs.search.brave.com/EvQ44E9EaUvF8EGw1L3_ByOL7R6QphK53pBH2DnMVqQ/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMudW5zcGxhc2gu/Y29tL3Bob3RvLTE1/OTA0MTA0MTM5ODkt/MzM1MTYyYjAxMzE0/P3E9ODAmdz0xMDAw/JmF1dG89Zm9ybWF0/JmZpdD1jcm9wJml4/bGliPXJiLTQuMC4z/Jml4aWQ9TTN3eE1q/QTNmREI4TUh4elpX/RnlZMmg4T1h4OFlY/TjFjeVV5TUhKdloz/eGxibnd3Zkh3d2ZI/eDhNQT09.jpeg',
    'https://imgs.search.brave.com/EvQ44E9EaUvF8EGw1L3_ByOL7R6QphK53pBH2DnMVqQ/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMudW5zcGxhc2gu/Y29tL3Bob3RvLTE1/OTA0MTA0MTM5ODkt/MzM1MTYyYjAxMzE0/P3E9ODAmdz0xMDAw/JmF1dG89Zm9ybWF0/JmZpdD1jcm9wJml4/bGliPXJiLTQuMC4z/Jml4aWQ9TTN3eE1q/QTNmREI4TUh4elpX/RnlZMmg4T1h4OFlY/TjFjeVV5TUhKdloz/eGxibnd3Zkh3d2ZI/eDhNQT09.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 15),
              child: const Text(
                'Your Orders',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 15),
              child: Text(
                'See All',
                style: TextStyle(
                  color: GlobalVariables.selectedNavBarColor,
                ),
              ),
            ),
          ],
        ),
        //Orders tile
        Container(
          height: 170,
          padding: const EdgeInsets.only(
            left: 10,
            right: 0,
            top: 20,
          ),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: list.length,
            itemBuilder: (context, index) {
              return SingleProduct(
                image: list[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
