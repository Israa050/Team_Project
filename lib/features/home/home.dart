import 'package:flutter/material.dart';
import 'package:salam_hack/core/helper/spacing.dart';
import 'package:salam_hack/core/themes/colors.dart';
import 'package:salam_hack/core/themes/styles.dart';
import 'package:salam_hack/features/home/widgets/home_bloc_builder.dart';
import 'package:salam_hack/features/home/widgets/home_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class CrisisPage extends StatelessWidget {
  const CrisisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Crisis Alert',
            style: TextStyles.font20RedBold.copyWith(color: Colors.white),
          ),
          backgroundColor: AppColors.primaryBlue,
          // Colors.white,
          // iconTheme: IconThemeData(color: Color(0xff4B5563)),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none,
              ),
            ),
            horizontalPadding(
              5,
            ),
          ],
          elevation: 4,
          iconTheme: IconThemeData(color: Colors.white),
        ),
        drawer: HomeDrawer(),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          child: HomeBlocBuilder(),
        ),

        // Padding(
        //   padding: const EdgeInsets.symmetric(
        //     horizontal: 10,
        //     vertical: 10,
        //   ),
        //   child: SingleChildScrollView(
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Text(
        //           'Active Crisis',
        //           style:TextStyles.font18BlackSemiBold,
        //         ),
        //         verticalPadding(
        //           10,
        //         ),

        //         CustomCardInfo(
        //           priority: 'high',
        //         ),
        //         verticalPadding(15),
        //         CustomCardInfo(
        //           priority: 'Meduim',
        //         ),
        //         verticalPadding(15),
        //         CustomCardInfo(),
        //         verticalPadding(15),
        //         CustomCardInfo(),

        //       ],
        //     ),
        //   ),
        // ),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.red,
          onPressed: () {},
          label: Text(
            'Report Emergency',
            style: TextStyles.font16BlackSemiBold.copyWith(
              color: Colors.white,
            ),
          ),
          icon: const Icon(
            Icons.warning_amber_rounded,
            color: Colors.white,
            size: 25,
          ),
        ),
      ),
    );
  }
}
