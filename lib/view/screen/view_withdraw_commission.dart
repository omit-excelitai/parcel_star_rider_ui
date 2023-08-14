import 'package:flutter/material.dart';
import 'package:parcel_star_rider_ui/model/parcel_model.dart';
import '../../utils/app_dimension.dart';

class ViewWithdrawCommissionScreen extends StatefulWidget {
  static const String routeName = '/view_withdraw_commission';
  ViewWithdrawCommissionScreen({super.key});

  @override
  State<ViewWithdrawCommissionScreen> createState() => _ViewWithdrawCommissionScreenState();
}

class _ViewWithdrawCommissionScreenState extends State<ViewWithdrawCommissionScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1F4F6),
      appBar: AppBar(
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            size: AppDimension.sizeWithHight(figmaSize: 20, context: context),
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xff0B4461),
        title: Text(
          "View Withdraw Commission",
          style: TextStyle(fontSize: AppDimension.sizeWithHight(figmaSize: 16, context: context),  color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),

                /// For History Table
                Text("Total Commission", style: TextStyle(fontSize: AppDimension.sizeWithHight(figmaSize: 16, context: context),  color: Color(0xff0B4460), fontWeight: FontWeight.w600),),
                SizedBox(height: 10,),

                /// Table Header
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                    color: Color(0xff0B4461),),
                  child: Row(
                    children: [

                      /// Serial No.
                      Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "SL. No",
                            style: TextStyle(fontSize: AppDimension.sizeWithHight(figmaSize: 16, context: context),  color: Color(0xffffffff), fontWeight: FontWeight.w400),
                            textAlign: TextAlign.center,
                          ),
                        ),),

                      /// Commission Invoice
                      Expanded(
                        flex: 3,
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "Commission Invoice",
                            style: TextStyle(fontSize: AppDimension.sizeWithHight(figmaSize: 16, context: context),  color: Color(0xffffffff), fontWeight: FontWeight.w400),
                            textAlign: TextAlign.center,),
                        ),),

                      /// Amount
                      Expanded(
                        flex: 2,
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "Amount",
                            style: TextStyle(fontSize: AppDimension.sizeWithHight(figmaSize: 16, context: context),  color: Color(0xffffffff), fontWeight: FontWeight.w400),
                            textAlign: TextAlign.center,),
                        ),),

                      /// Type
                      Expanded(
                        flex: 3,
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "Type",
                            style: TextStyle(fontSize: AppDimension.sizeWithHight(figmaSize: 16, context: context),  color: Color(0xffffffff), fontWeight: FontWeight.w400),
                            textAlign: TextAlign.center,),
                        ),),
                    ],
                  ),
                ),

                /// Table Body
                Container(
                  child: ListView.builder(
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: parcelList.length,
                      itemBuilder: (context, index){
                        return Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                              border: Border.all(width: 1, color: Color(0xffE0E0E0))),
                          child: Row(
                            children: [

                              /// Serial No
                              Expanded(
                                flex: 1,
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "${parcelList[index].serialNo}",
                                    style: TextStyle(fontSize: AppDimension.sizeWithHight(figmaSize: 14, context: context),  color: Color(0xff454545), fontWeight: FontWeight.w400),
                                    textAlign: TextAlign.center,),
                                ),),

                              /// Commission Invoice
                              Expanded(
                                flex: 3,
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "${parcelList[index].invoice}",
                                    style: TextStyle(fontSize: AppDimension.sizeWithHight(figmaSize: 14, context: context),  color: Color(0xff0D99FF), fontWeight: FontWeight.w400,
                                        decoration: TextDecoration.underline, decorationColor: Color(0xff0D99FF)),
                                    textAlign: TextAlign.center,),
                                ),),

                              /// Amount
                              Expanded(
                                flex: 2,
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "${parcelList[index].amount}",
                                    style: TextStyle(fontSize: AppDimension.sizeWithHight(figmaSize: 14, context: context),  color: Color(0xff454545), fontWeight: FontWeight.w400),
                                    textAlign: TextAlign.center,),
                                ),),

                              /// Type
                              Expanded(
                                flex: 3,
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "${parcelList[index].type}",
                                    style: TextStyle(fontSize: AppDimension.sizeWithHight(figmaSize: 14, context: context),  color: Color(0xff454545), fontWeight: FontWeight.w400),
                                    textAlign: TextAlign.center, ),
                                ),),
                            ],
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
