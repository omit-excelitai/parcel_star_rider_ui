import 'package:flutter/material.dart';
import 'package:parcel_star_rider_ui/view/screen/all_parcel_screen.dart';
import 'package:parcel_star_rider_ui/view/screen/view_withdraw_commission.dart';
import 'package:parcel_star_rider_ui/view/screen/withdraw_commission_history_details_screen.dart';
import 'package:parcel_star_rider_ui/view/screen/withdraw_commission_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: WithdrawCommissionScreen.routeName,
      routes: {
        WithdrawCommissionScreen.routeName: (context) => WithdrawCommissionScreen(),
        AllParcelScreen.routeName: (context) => AllParcelScreen(),
        WithdrawCommissionHistoryDetailsScreen.routeName: (context) => WithdrawCommissionHistoryDetailsScreen(),
        ViewWithdrawCommissionScreen.routeName: (context) => ViewWithdrawCommissionScreen(),
      },
    );
  }
}
