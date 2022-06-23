import 'package:flutter/material.dart';
import 'package:web_app_ui/circular_indicator.dart';
import 'package:web_app_ui/line_chart.dart';
import 'package:web_app_ui/profile_sidebar.dart';
import 'package:web_app_ui/side_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> notifications = [
    "Type: Notification",
    "Notification 1",
    "Notification 2",
    "Notification 3",
    "Notification 4",
    "Notification 5",
  ];
  List<String> comments = [
    "Soft: Comment",
    "Comment 1",
    "Comment 2",
    "Comment 3",
    "Comment 4",
    "Comment 5",
  ];
  String selectedNotificationValue = "Type: Notification";
  String selectedCommentValue = "Soft: Comment";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Row(
        children: [
          const WebAppSideBar(),
          Container(
            height: double.infinity,
            width: 900,
            color: const Color.fromARGB(255, 41, 45, 54),
            child: Column(
              children: [
                headerDesign(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "REVENUE",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 157, 171, 199),
                                  fontSize: 30,
                                  letterSpacing: 1,
                                ),
                              ),
                              Text(
                                "September 15 - Septemberr 30",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 157, 171, 199),
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              dropdownButtonWidget(
                                  notifications, selectedNotificationValue),
                              const SizedBox(width: 20,),
                              dropdownButtonWidget(
                                  comments, selectedCommentValue),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 15,),
                      const WebAppLineChart(),
                      const SizedBox(height: 15,),
                      const WebAppCircularPercentIndicator(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const ProfileSideBarDesign(),
        ],
      ),
    );
  }

  Widget dropdownButtonWidget(List<String> lists, String selectedValue) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: 30,
      width: 180,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 41, 45, 54),
        borderRadius: const BorderRadius.horizontal(
          left: Radius.circular(20),
          right: Radius.circular(20),
        ),
        border: Border.all(
          width: 1,
          color: const Color.fromARGB(255, 157, 171, 199),
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          value: selectedValue,
          dropdownColor: const Color.fromARGB(255, 41, 45, 54),
          iconEnabledColor: const Color.fromARGB(255, 157, 171, 199),
          items: lists.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: const TextStyle(
                  color: Color.fromARGB(255, 157, 171, 199),
                  fontSize: 12,
                ),
              ),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              selectedValue = newValue!;
            });
          },
        ),
      ),
    );
  }

  Widget headerDesign() {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 41, 45, 54),
        border: Border.all(width: 0.2, color: Colors.grey),
      ),
      child: Padding(
        padding: const EdgeInsets.all(26.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                Icon(
                  Icons.notifications_outlined,
                  size: 18,
                  color: Color.fromARGB(255, 157, 171, 199),
                ),
                SizedBox(
                  width: 30,
                ),
                Icon(
                  Icons.message_outlined,
                  size: 18,
                  color: Color.fromARGB(255, 157, 171, 199),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                side: const BorderSide(
                  width: 3,
                  color: Color.fromARGB(255, 13, 105, 135),
                ),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(20),
                    right: Radius.circular(20),
                  ),
                ),
                primary: const Color.fromARGB(255, 5, 201, 252),
              ),
              child: const Text(
                "Create Project",
                style: TextStyle(
                  color: Color.fromARGB(255, 41, 45, 54),
                  fontSize: 11,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
