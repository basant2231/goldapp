import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldapp/widgets/CustomeAppbar.dart';

import 'cubit/gold_silver_cubit.dart';
import 'widgets/Metal.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainCubit()
        ..getGoldPrice()
        ..getSilverPrice(),
      child: BlocConsumer<MainCubit, SState>(
        listener: (context, state) {
         
        },
        builder: (context, state) {
          return Scaffold(
              backgroundColor: Colors.grey[800],
              appBar: CustomAppbar(),
              body: Container(
                  padding: const EdgeInsets.only(
                      top: 50, right: 8, left: 8, bottom: 8),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Metal(
                            goldI: MainCubit.get(context).goldI,
                            image: 'assets/gold.png',
                            maincolor: Colors.orange,
                            text: 'Gold',
                            shadowcolor: Colors.yellow.shade300),
                        Metal(
                            goldI: MainCubit.get(context).SilverI,
                            image: 'assets/silver.png',
                            maincolor: Colors.grey,
                            text: 'Silver',
                            shadowcolor: Colors.grey),
                      ])));
        },
      ),
    );
  }
}
