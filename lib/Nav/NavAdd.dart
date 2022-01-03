import 'package:flutter/material.dart';
import 'package:stemcon/Nav/textbutton/DprButton.dart';


class NavAdd extends StatefulWidget {
  const NavAdd({Key? key}) : super(key: key);

  @override
  _NavAddState createState() => _NavAddState();
}

class _NavAddState extends State<NavAdd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.album),
                    title: Text('DPR'),
                    subtitle: Text('DPR means Daily progress Repoart for manage your project work'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: const Text('31 - 12 - 2021'),
                        onPressed: () {/* ... */},
                      ),
                      const SizedBox(width: 8),
                      TextButton(
                        child: const Text('ADD DPR'),
                        onPressed: () {
                          /* ... */
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => DprButton()));
                          },
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.album),
                    title: Text('TASK'),
                    subtitle: Text('you can assigne task to your co-workers. we can track work eassly '),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: const Text('31 - 12 - 2021'),
                        onPressed: () {/* ... */},
                      ),
                      const SizedBox(width: 8),
                      TextButton(
                        child: const Text('ADD Task'),
                        onPressed: () {
                          /* ... */
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => DprButton()));
                        },
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),

          ],
        ),      ),
    );
  }
}
