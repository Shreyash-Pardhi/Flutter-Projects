import 'package:amazon_clone/constants/global_variables.dart';
import 'package:amazon_clone/features/accounts/widgets/account_page_buttons.dart';
import 'package:amazon_clone/features/accounts/widgets/below_appbar.dart';
import 'package:amazon_clone/features/accounts/widgets/orders.dart';
import 'package:flutter/material.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: GlobalVariables.AppBarGradient,
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  'images/amazon_in.png',
                  width: 120,
                  height: 45,
                  //color: Colors.black,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Icon(Icons.notifications_outlined),
                    ),
                    Icon(Icons.search),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: const Column(children: [
        BelowAppBar(),
        SizedBox(height: 10),
        TopButtons(),
        SizedBox(height: 20),
        Orders(),
      ]),
    );
  }
}
