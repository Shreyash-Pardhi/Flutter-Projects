import 'dart:ui';

import 'package:flutter/material.dart';

class DealOfDay extends StatefulWidget {
  const DealOfDay({super.key});

  @override
  State<DealOfDay> createState() => _DealOfDayState();
}

class _DealOfDayState extends State<DealOfDay> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          child: const Text(
            'Deal of Day',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        Image.network(
          'https://imgs.search.brave.com/EvQ44E9EaUvF8EGw1L3_ByOL7R6QphK53pBH2DnMVqQ/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMudW5zcGxhc2gu/Y29tL3Bob3RvLTE1/OTA0MTA0MTM5ODkt/MzM1MTYyYjAxMzE0/P3E9ODAmdz0xMDAw/JmF1dG89Zm9ybWF0/JmZpdD1jcm9wJml4/bGliPXJiLTQuMC4z/Jml4aWQ9TTN3eE1q/QTNmREI4TUh4elpX/RnlZMmg4T1h4OFlY/TjFjeVV5TUhKdloz/eGxibnd3Zkh3d2ZI/eDhNQT09.jpeg',
          height: 235,
          fit: BoxFit.fitHeight,
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(
            left: 10,
          ),
          child: const Text(
            '\u20B9 50000',
            style: TextStyle(
              fontSize: 18,
              fontFeatures: [FontFeature.subscripts()],
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(
            left: 10,
            top: 5,
            right: 40,
          ),
          child: const Text(
            'Asus Rog',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                'https://imgs.search.brave.com/EvQ44E9EaUvF8EGw1L3_ByOL7R6QphK53pBH2DnMVqQ/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMudW5zcGxhc2gu/Y29tL3Bob3RvLTE1/OTA0MTA0MTM5ODkt/MzM1MTYyYjAxMzE0/P3E9ODAmdz0xMDAw/JmF1dG89Zm9ybWF0/JmZpdD1jcm9wJml4/bGliPXJiLTQuMC4z/Jml4aWQ9TTN3eE1q/QTNmREI4TUh4elpX/RnlZMmg4T1h4OFlY/TjFjeVV5TUhKdloz/eGxibnd3Zkh3d2ZI/eDhNQT09.jpeg',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                'https://imgs.search.brave.com/EvQ44E9EaUvF8EGw1L3_ByOL7R6QphK53pBH2DnMVqQ/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMudW5zcGxhc2gu/Y29tL3Bob3RvLTE1/OTA0MTA0MTM5ODkt/MzM1MTYyYjAxMzE0/P3E9ODAmdz0xMDAw/JmF1dG89Zm9ybWF0/JmZpdD1jcm9wJml4/bGliPXJiLTQuMC4z/Jml4aWQ9TTN3eE1q/QTNmREI4TUh4elpX/RnlZMmg4T1h4OFlY/TjFjeVV5TUhKdloz/eGxibnd3Zkh3d2ZI/eDhNQT09.jpeg',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                'https://imgs.search.brave.com/EvQ44E9EaUvF8EGw1L3_ByOL7R6QphK53pBH2DnMVqQ/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMudW5zcGxhc2gu/Y29tL3Bob3RvLTE1/OTA0MTA0MTM5ODkt/MzM1MTYyYjAxMzE0/P3E9ODAmdz0xMDAw/JmF1dG89Zm9ybWF0/JmZpdD1jcm9wJml4/bGliPXJiLTQuMC4z/Jml4aWQ9TTN3eE1q/QTNmREI4TUh4elpX/RnlZMmg4T1h4OFlY/TjFjeVV5TUhKdloz/eGxibnd3Zkh3d2ZI/eDhNQT09.jpeg',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                'https://imgs.search.brave.com/EvQ44E9EaUvF8EGw1L3_ByOL7R6QphK53pBH2DnMVqQ/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMudW5zcGxhc2gu/Y29tL3Bob3RvLTE1/OTA0MTA0MTM5ODkt/MzM1MTYyYjAxMzE0/P3E9ODAmdz0xMDAw/JmF1dG89Zm9ybWF0/JmZpdD1jcm9wJml4/bGliPXJiLTQuMC4z/Jml4aWQ9TTN3eE1q/QTNmREI4TUh4elpX/RnlZMmg4T1h4OFlY/TjFjeVV5TUhKdloz/eGxibnd3Zkh3d2ZI/eDhNQT09.jpeg',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(
            left: 15,
            right: 15,
            top: 15,
          ),
          alignment: Alignment.topLeft,
          child: Text(
            'See all deals',
            style: TextStyle(
              color: Colors.cyan[800],
            ),
          ),
        ),
      ],
    );
  }
}
