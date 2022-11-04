import 'package:flutter/material.dart';
import 'package:testbloc/utils/app_colors.dart';

import '../../components/custom_text.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              const CustomText(
                text: "RCC Tracker Details",
                fontSize: 20  ,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: kGrey.withOpacity(0.3)),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      const CustomText(
                        text: "User Details",
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      const SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: kwhite,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: const [
                              CustomRow(
                                title: 'Location',
                                value: "RNGD",
                              ),
                              CustomRow(
                                title: 'Request Job',
                                value: "RNGD-RCC-22-0005396",
                              ),
                              CustomRow(
                                title: 'Invoice Number',
                                value: "RNGD-CS-32093",
                              ),
                              CustomRow(
                                title: 'Date',
                                value: "17/12/2022",
                              ),
                              CustomRow(
                                title: 'Customer',
                                value: "Mr. Suranga",
                              ),
                              CustomRow(
                                title: 'Mobile',
                                value: "0712345678",
                              ),
                              CustomRow(
                                title: 'Address',
                                value: "70, Poorvarama rd, Colombo 03",
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const CustomText(
                        text: "Item Details",
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      const SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: kwhite,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: const [
                              CustomRow(
                                title: 'Item code',
                                value: "ABTV32A25",
                              ),
                              CustomRow(
                                title: 'Model',
                                value: "32A25",
                              ),
                              CustomRow(
                                title: 'Serial',
                                value: "3TE32G2109C401C3MA15347",
                              ),
                              CustomRow(
                                title: 'Description',
                                value: "Abans-32 LED Telivision",
                              ),
                              CustomRow(
                                title: 'Defect Type',
                                value: "Not Working",
                              ),
                              CustomRow(
                                title: 'Warranty No',
                                value: "161021-DPS45-P01-501842191",
                              ),
                              CustomRow(
                                title: 'Warranty Period',
                                value: "36 Months",
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const CustomText(
                        text: "Collection Details",
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      const SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: kwhite,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: const [
                              CustomRow(
                                title: 'Method',
                                value: "Return by customer - To Showroom",
                              ),
                              CustomRow(
                                title: 'Service Agent',
                                value: "ES002",
                              ),
                              CustomRow(
                                title: 'Date',
                                value: "17/12/2022",
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 50),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomRow extends StatelessWidget {
  const CustomRow({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
        top: 3,
        bottom: 1,
      ),
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.30,
            child: Text(title,
                style: const TextStyle(
                  fontSize: 14,
                  color: Color(0xff572cd8),
                  letterSpacing: 0.351,
                  fontWeight: FontWeight.w700,
                  height: 1.0,
                )),
          ),
          const Text(' : '),
          Flexible(
            child: Text(
              value,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Colors.black, //const Color(0xff302f32),
                letterSpacing: 0.351,
                height: 1.0,
              ),
              maxLines: 2,
            ),
          )
        ],
      ),
    );
  }
}
