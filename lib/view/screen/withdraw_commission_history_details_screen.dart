import 'package:flutter/material.dart';
import '../../model/parcel_model.dart';
import '../../utils/app_dimension.dart';

class WithdrawCommissionHistoryDetailsScreen extends StatefulWidget {
  static const String routeName = '/withdraw_commission_history_details_screen';
  WithdrawCommissionHistoryDetailsScreen({super.key});

  @override
  State<WithdrawCommissionHistoryDetailsScreen> createState() => _WithdrawCommissionHistoryDetailsScreenState();
}

class _WithdrawCommissionHistoryDetailsScreenState extends State<WithdrawCommissionHistoryDetailsScreen> {
  final TextEditingController _emergencyNoteController = TextEditingController();


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emergencyNoteController.dispose();
  }

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
          "Commission History Details",
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
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color: Colors.white,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      /// Withdraw Amount
                      Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Text(
                              "Date & Time",
                              style: TextStyle(fontSize: AppDimension.sizeWithHight(figmaSize: 14, context: context),  color: Color(0xff666666), fontWeight: FontWeight.w400),
                            ),),
                          Expanded(
                            flex: 1,
                            child: Text(
                              ":",
                              style: TextStyle(fontSize: AppDimension.sizeWithHight(figmaSize: 14, context: context),  color: Color(0xff0B4461), fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,),),
                          Expanded(
                              flex: 4,
                              child: Text(
                                "05/11/22 10:33:05",
                                style: TextStyle(fontSize: AppDimension.sizeWithHight(figmaSize: 14, context: context),  color: Color(0xff454545), fontWeight: FontWeight.w600),
                              )),
                        ],
                      ),
                      SizedBox(height: 12,),
                      Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Text(
                              "Withdraw amount",
                              style: TextStyle(fontSize: AppDimension.sizeWithHight(figmaSize: 14, context: context),  color: Color(0xff666666), fontWeight: FontWeight.w400),
                            ),),
                          Expanded(
                            flex: 1,
                            child: Text(
                              ":",
                              style: TextStyle(fontSize: AppDimension.sizeWithHight(figmaSize: 14, context: context),  color: Color(0xff0B4461), fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,),),
                          Expanded(
                              flex: 4,
                              child: Text(
                                "10000 ৳",
                                style: TextStyle(fontSize: AppDimension.sizeWithHight(figmaSize: 14, context: context),  color: Color(0xff454545), fontWeight: FontWeight.w600),
                              )),
                        ],
                      ),
                      SizedBox(height: 12,),
                      Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Text(
                              "Total Parcel",
                              style: TextStyle(fontSize: AppDimension.sizeWithHight(figmaSize: 14, context: context),  color: Color(0xff666666), fontWeight: FontWeight.w400),
                            ),),
                          Expanded(
                            flex: 1,
                            child: Text(
                              ":",
                              style: TextStyle(fontSize: AppDimension.sizeWithHight(figmaSize: 14, context: context),  color: Color(0xff0B4461), fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,),),
                          Expanded(
                              flex: 4,
                              child: Text("4", style: TextStyle(fontSize: AppDimension.sizeWithHight(figmaSize: 14, context: context),  color: Color(0xff454545), fontWeight: FontWeight.w600),)),
                        ],
                      ),
                      SizedBox(height: 12,),
                      Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Text(
                              "Status",
                              style: TextStyle(fontSize: AppDimension.sizeWithHight(figmaSize: 14, context: context),  color: Color(0xff666666), fontWeight: FontWeight.w400),
                            ),),
                          Expanded(
                            flex: 1,
                            child: Text(
                              ":",
                              style: TextStyle(fontSize: AppDimension.sizeWithHight(figmaSize: 14, context: context),  color: Color(0xff0B4461), fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,),),
                          Expanded(
                              flex: 4,
                              child: Text("Pending", style: TextStyle(fontSize: AppDimension.sizeWithHight(figmaSize: 14, context: context),  color: Color(0xffCAA532), fontWeight: FontWeight.w600),)),
                        ],
                      ),
                      SizedBox(height: 15,),

                      /// For Emergency Note
                      Text(
                        "Emergency Note",
                        style: TextStyle(fontSize: AppDimension.sizeWithHight(figmaSize: 14, context: context),  color: Color(0xff666666), fontWeight: FontWeight.w400),),
                      SizedBox(height: 6,),
                      TextFormField(
                        maxLines: null,
                        cursorColor: Color(0xff666666),
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.done,
                        controller: _emergencyNoteController,
                        style: TextStyle(fontSize: AppDimension.sizeWithHight(figmaSize: 14, context: context),  color: Color(0xff666666), fontWeight: FontWeight.w400),
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                          hintText: "Request note",
                          hintStyle: TextStyle(fontSize: AppDimension.sizeWithHight(figmaSize: 14, context: context),  color: Color(0xffBABABA), fontWeight: FontWeight.w300),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Color(0xffE0E0E0)),
                              borderRadius: BorderRadius.circular(5)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Color(0xffE0E0E0)),
                              borderRadius: BorderRadius.circular(5)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Color(0xffE0E0E0)),
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                      // SizedBox(height: 25,),
                      //
                      // /// For Send Button
                      // InkWell(
                      //   onTap: (){
                      //     Navigator.of(context).pushNamed(AllParcelScreen.routeName);
                      //   },
                      //   child: Container(
                      //     alignment: Alignment.center,
                      //     height: 42,
                      //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                      //       color: Color(0xff0B4461),),
                      //     child:  Text(
                      //       "Send",
                      //       style: TextStyle(fontSize: AppDimension.sizeWithHight(figmaSize: 14, context: context),  color: Color(0xffffffff), fontWeight: FontWeight.w500),),
                      //   ),
                      // ),
                      SizedBox(height: 10,),

                    ],),
                ),


                /// For History Table
                SizedBox(height: 30,),
                Text("Parcel", style: TextStyle(fontSize: AppDimension.sizeWithHight(figmaSize: 16, context: context),  color: Color(0xff0B4460), fontWeight: FontWeight.w600),),
                SizedBox(height: 10,),

                /// Table Header
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                    color: Color(0xff0B4461),),
                  child: Row(
                    children: [

                      /// Serial No.
                      Expanded(
                        flex: 3,
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "SL. No",
                            style: TextStyle(fontSize: AppDimension.sizeWithHight(figmaSize: 16, context: context),  color: Color(0xffffffff), fontWeight: FontWeight.w400),
                          ),
                        ),),

                      /// Invoice
                      Expanded(
                        flex: 3,
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "Invoice",
                            style: TextStyle(fontSize: AppDimension.sizeWithHight(figmaSize: 16, context: context),  color: Color(0xffffffff), fontWeight: FontWeight.w400),
                          ),
                        ),),

                      /// Amount
                      Expanded(
                        flex: 3,
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "Amount",
                            style: TextStyle(fontSize: AppDimension.sizeWithHight(figmaSize: 16, context: context),  color: Color(0xffffffff), fontWeight: FontWeight.w400),
                          ),
                        ),),

                      /// Type
                      Expanded(
                        flex: 3,
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "Type",
                            style: TextStyle(fontSize: AppDimension.sizeWithHight(figmaSize: 16, context: context),  color: Color(0xffffffff), fontWeight: FontWeight.w400),
                          ),
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
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                              border: Border.all(width: 1, color: Color(0xffE0E0E0))),
                          child: Row(
                            children: [

                              /// Serial No
                              Expanded(
                                flex: 3,
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "${parcelList[index].serialNo}",
                                    style: TextStyle(fontSize: AppDimension.sizeWithHight(figmaSize: 14, context: context),  color: Color(0xff454545), fontWeight: FontWeight.w400),
                                  ),
                                ),),

                              /// Invoice
                              Expanded(
                                flex: 3,
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "${parcelList[index].invoice}",
                                    style: TextStyle(fontSize: AppDimension.sizeWithHight(figmaSize: 14, context: context),  color: Color(0xff0D99FF), fontWeight: FontWeight.w400,
                                        decoration: TextDecoration.underline, decorationColor: Color(0xff0D99FF)),
                                  ),
                                ),),

                              /// Amount
                              Expanded(
                                flex: 3,
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "${parcelList[index].amount}",
                                    style: TextStyle(fontSize: AppDimension.sizeWithHight(figmaSize: 14, context: context),  color: Color(0xff454545), fontWeight: FontWeight.w400),
                                  ),
                                ),),

                              /// Type
                              Expanded(
                                flex: 3,
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "${parcelList[index].type}",
                                    style: TextStyle(fontSize: AppDimension.sizeWithHight(figmaSize: 14, context: context),  color: Color(0xff454545), fontWeight: FontWeight.w400),
                                  ),
                                ),),
                            ],
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
