import 'package:demo_app/meal_monkey/common_class/button.dart';
import 'package:demo_app/meal_monkey/componets/model_bottom_sheet.dart';
import 'package:flutter/material.dart';

class PaymentDetails extends StatefulWidget {
  const PaymentDetails({Key? key}) : super(key: key);

  @override
  State<PaymentDetails> createState() => _PaymentDetailsState();
}

class _PaymentDetailsState extends State<PaymentDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.chevron_left,color: Colors.black),),
        leadingWidth: 40,
        toolbarHeight: 55,
        title: Text(
          'Payment Details',
          style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w500,
              color: Colors.grey.shade900),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              splashRadius: 25,
              icon: Icon(
                Icons.shopping_cart_sharp,
                color: Colors.grey.shade900,
              ))
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 15,
          ),

          /// Customize your payment method
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'Customize your payment method',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade900),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Divider(
              color: Colors.grey.shade900.withOpacity(0.1),
              thickness: 1,
            ),
          ),
          const SizedBox(
            height: 15,
          ),

          /// Credit/debit card details
          Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(bottom: -15,left: 25,right: 25,child: Container(height: 50,width: 200,color: Color(0xff000000).withOpacity(0.2),),
              ),
              Container(
                height: 200,
                width: double.infinity,
                color: const Color(0xfff7f7f7),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// Cash/Card on delivery,
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Cash/Card on delivery',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey.shade900),
                          ),
                          const Icon(
                            Icons.check,
                            size: 20,
                            color: Color(0xfffc6011),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Divider(
                        color: Colors.grey.shade900.withOpacity(0.1),
                        thickness: 1,
                      ),

                      /// Card
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                              height: 45,
                              width: 45,
                              child: Image.asset(
                                'images/meal_monkey/Componets/visa.png',
                              )),
                          Text(
                            '**** **** ****  2187',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey.shade900),
                          ),
                          CommonButton(
                            color: const Color(0xfff7f7f7),
                            onTap: () {},
                            height: 25,
                            width: 95,
                            bordercolor: Color(0xfffc6011),
                            buttontext: "Delete Card",
                            buttontextcolor: Color(0xfffc6011),
                            fontsize: 10,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Divider(
                        color: Colors.grey.shade900.withOpacity(0.1),
                        thickness: 1,
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      /// Other Methods
                      Text(
                        'Other Methods',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey.shade900),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 35,
          ),
          Center(
              child: CommonButton(
            color: const Color(0xfffc6011),
            onTap: () {
              bottomsheet(context);
            },
            buttontext: "+  Add another Credit/Debit Card",
            buttontextcolor: Colors.white,
            fontsize: 16,
          ))
        ],
      ),
    );
  }
}

