import 'package:amazon_clone/common/widgets/custom_textfield.dart';
import 'package:amazon_clone/constants/global_variables.dart';
import 'package:flutter/material.dart';

class AddressView extends StatefulWidget {
  static const String routeName = '/address';
  const AddressView({super.key});

  @override
  State<AddressView> createState() => _AddressViewState();
}

class _AddressViewState extends State<AddressView> {
  final TextEditingController flatBuildingController = TextEditingController();
  final TextEditingController areaStreetController = TextEditingController();
  final TextEditingController townCityController = TextEditingController();
  final TextEditingController pincodeController = TextEditingController();
  final _addressFormKey = GlobalKey();

  @override
  void dispose() {
    flatBuildingController.dispose();
    areaStreetController.dispose();
    townCityController.dispose();
    pincodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var address =
        'Amazon Address bar with exiting address'; //context.watch<UserProvider>().user.address;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          title: const Text('Address'),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: GlobalVariables.AppBarGradient,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              if (address.isNotEmpty)
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black12,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          address,
                          style: const TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'OR',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              Form(
                key: _addressFormKey,
                child: Column(
                  children: [
                    CustomTextField(
                      controller: flatBuildingController,
                      hintText: 'Flat/ House no./ Building',
                    ),
                    const SizedBox(height: 10),
                    CustomTextField(
                      controller: areaStreetController,
                      hintText: 'Area/ Street',
                    ),
                    const SizedBox(height: 10),
                    CustomTextField(
                      controller: townCityController,
                      hintText: 'Town/ City',
                    ),
                    const SizedBox(height: 10),
                    CustomTextField(
                      controller: pincodeController,
                      hintText: 'Pincode',
                    ),
                    const SizedBox(height: 10),
                    
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
