import 'package:flutter/material.dart';
import 'package:web_app_ui/model/profileData.dart';

class ProfileSideBarDesign extends StatefulWidget {
  const ProfileSideBarDesign({Key? key}) : super(key: key);

  @override
  State<ProfileSideBarDesign> createState() => _ProfileSideBarDesignState();
}

class _ProfileSideBarDesignState extends State<ProfileSideBarDesign> {
  final List<ProfileData> datas = DataList;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      color: const Color.fromARGB(255, 41, 45, 54),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 41, 45, 54),
              border: Border.all(width: 0.2, color: Colors.grey),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.5),
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 25,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "donald duck".toUpperCase(),
                    style: const TextStyle(
                      color: Color.fromARGB(255, 157, 171, 199),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 623,
            child: ListView.builder(
              itemCount: datas.length,
              itemBuilder: (context, index) {
                final data = datas[index];
                return Container(
                  margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  height: 145,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: const Color.fromARGB(255, 32, 35, 43),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        data.icon,
                        size: 22,
                        color: const Color.fromARGB(255, 157, 171, 199),
                      ),
                      Text(
                        data.history,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 157, 171, 199),
                          fontSize: 17,
                        ),
                      ),
                      const Icon(
                        Icons.fullscreen,
                        size: 18,
                        color: Color.fromARGB(255, 157, 171, 199),
                      ),
                      Text(
                        "${data.results}",
                        style: const TextStyle(
                          color: Color.fromARGB(255, 157, 171, 199),
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
