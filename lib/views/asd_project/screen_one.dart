import 'package:flutter/material.dart';
import 'package:testbloc/components/custom_button.dart';
import 'package:testbloc/components/custom_input.dart';
import 'package:testbloc/components/custom_text.dart';
import 'package:testbloc/utils/app_colors.dart';
import 'package:testbloc/utils/util_functions.dart';
import 'package:testbloc/views/asd_project/screen_two.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(children: [
              const CustomText(
                text: "RCC Request Tracker",
                fontWeight: FontWeight.w900,
                fontSize: 20,
              ),
              const SizedBox(height: 20),
              CustomInput(
                controller: controller,
                lableText: "RCC/AC Account",
                hintText: "RCC/AC Account",
                iconBtn: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Card(
                  child: Container(
                    height: size.height * 0.42,
                    width: size.width,
                    decoration: const BoxDecoration(
                      color: Color(0x80d8cef7),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0x80d8cef7),
                          border: Border.all(
                            width: 3,
                            color: kgreen,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(height: 20),
                            const CustomRow(
                              title: 'Location',
                              value: "RNGD",
                            ),
                            const CustomRow(
                              title: 'Request Job',
                              value: "RNGD-RCC-22-0005396",
                            ),
                            const CustomRow(
                              title: 'Customer',
                              value: "Mr. Suranga",
                            ),
                            const CustomRow(
                              title: 'Contact',
                              value: "0712345678",
                            ),
                            const SizedBox(height: 20),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                                top: 3,
                                bottom: 1,
                              ),
                              child: Table(
                                columnWidths: const {
                                  0: FlexColumnWidth(1),
                                  1: FlexColumnWidth(2),
                                },
                                textDirection: TextDirection.ltr,
                                defaultVerticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                border: TableBorder.all(
                                  width: 1.5,
                                  color: kblack,
                                ),
                                children: const [
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                          vertical: 1,
                                          horizontal: 5,
                                        ),
                                        child: CustomText(
                                          text: "Invoice",
                                          fontSize: 13,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(5.0),
                                        child: CustomText(
                                          text: "RNGD-CS-32093",
                                          fontWeight: FontWeight.w700,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                          vertical: 1,
                                          horizontal: 5,
                                        ),
                                        child: CustomText(
                                          text: "Item",
                                          fontSize: 13,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(5.0),
                                        child: CustomText(
                                          text: "ABTV32A25",
                                          fontWeight: FontWeight.w700,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                          vertical: 1,
                                          horizontal: 5,
                                        ),
                                        child: CustomText(
                                          text: "Description",
                                          fontSize: 13,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(5.0),
                                        child: CustomText(
                                          text: "Abans 32-LED",
                                          fontWeight: FontWeight.w700,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomButton(
                                  width: 150,
                                  height: 40,
                                  color: kRed,
                                  icon: Icons.close,
                                  onTap: () {
                                    UtilFunctions.navigateTo(
                                        context, const ScreenTwo());
                                  },
                                  text: "Cancel RCC",
                                ),
                                CustomButton(
                                  width: 150,
                                  height: 40,
                                  onTap: () {
                                    UtilFunctions.navigateTo(
                                        context, const ScreenTwo());
                                  },
                                  text: "View More",
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ]),
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
