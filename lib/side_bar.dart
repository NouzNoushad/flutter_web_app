import 'package:flutter/material.dart';

class WebAppSideBar extends StatefulWidget {
  const WebAppSideBar({Key? key}) : super(key: key);

  @override
  State<WebAppSideBar> createState() => _WebAppSideBarState();
}

class _WebAppSideBarState extends State<WebAppSideBar> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: 220,
        color: const Color.fromARGB(255, 49, 57, 74),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 12.0),
              child: FlutterLogo(
                size: 50,
              ),
            ),
            const Divider(),
            const SizedBox(
              height: 15,
            ),
            listTileWidgets(Icons.dashboard, "DASHBOARD"),
            listTileWidgets(Icons.feed, "FEED"),
            listTileWidgets(Icons.auto_graph, "STATISTICS"),
            listTileWidgets(Icons.person, "TEAM"),
            listTileWidgets(Icons.file_copy, "PROJECTS"),
            const SizedBox(height: 230,),
            listTileWidgets(Icons.settings, "SETTINGS"),
            const Divider(),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 12.0),
              child: RotatedBox(
                quarterTurns: 3,
                child: Icon(
                  Icons.exit_to_app,
                  size: 30,
                  color: Color.fromARGB(255, 157, 171, 199),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget listTileWidgets(IconData icon, String text) {
    return ListTile(
      onTap: () {},
      leading: Icon(
        icon,
        size: 16,
        color: const Color.fromARGB(255, 157, 171, 199),
      ),
      title: Text(
        text,
        style: const TextStyle(
          color: Color.fromARGB(255, 157, 171, 199),
          fontSize: 12,
        ),
      ),
    );
  }
}
