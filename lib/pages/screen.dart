import 'package:flutter/material.dart';
import 'package:tasks_gdsc/components/buble.dart';
import 'package:tasks_gdsc/components/card.dart';
import 'package:tasks_gdsc/components/custom_text_field.dart';

class Screen_One extends StatelessWidget {
  const Screen_One({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffcfcff),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: const Icon(
            Icons.analytics_rounded,
            color: Color(0xfff79ea6),
            size: 40,
          ),
        ),
        title: const Column(
          children: [
            Text('Hello Zaskia', style: TextStyle(color: Colors.grey)),
            Text(
              'JAKARTA, INA',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: Container(
              width: 50.0,
              height: 60.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  20.0,
                ),
                child: Image.asset(
                  'assets/FB_IMG_1692010229930.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 30.0, left: 30.0, top: 30.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(child: CustomTextField()),
                  SizedBox(
                    width: 25.0,
                  ),
                  Icon(
                    Icons.account_balance_wallet_rounded,
                    color: Color(0xfff79ea6),
                    size: 45,
                  ),
                ],
              ),
              SizedBox(
                height: 80.0,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 40,
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 0,
                          offset: Offset(10, 10),
                        ),
                      ],
                      color: Color(0xfff79ea6),
                    ),
                    width: double.infinity,
                    height: 150,
                  ),
                  Positioned(
                    left: 32,
                    top: -60,
                    child: Image.asset(
                      'assets/12345.png',
                      height: 220,
                      width: 150,
                    ),
                  ),
                  Positioned(
                    left: 140, // تعديل الموضع الأفقي للنص
                    top: 20, // تعديل الموضع الرأسي للنص
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Big Sale',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          width: 150,
                          child: Text(
                            'Get The Trandy fasion at the discount of up 50%',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Buble(
                      txt: 'Taha',
                    ),
                    Buble(
                      txt: 'Taha Hamada',
                    ),
                    Buble(txt: 'afcsgs'),
                    Buble(
                      txt: 'Taha',
                    ),
                    Buble(
                      txt: 'Taha Hamada',
                    ),
                    Buble(txt: 'afcsgs'),
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                height: 200.0, // ارتفاع مربع الصور
                child: ListView(
                  scrollDirection: Axis.vertical, // للتمرير العمودي
                  children: [
                    Row(
                      children: [
                        Expanded(child: ccard()),
                        SizedBox(
                          width: 15.0,
                        ),
                        Expanded(child: ccard()),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Expanded(child: ccard()),
                        SizedBox(
                          width: 15.0,
                        ),
                        Expanded(child: ccard()),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(50), 
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 10.0,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.assignment_outlined), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.stroller_sharp), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
          ],
        ),
      ),
    );
  }
}
