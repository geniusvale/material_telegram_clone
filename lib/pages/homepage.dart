import 'package:flutter/material.dart';
import 'package:material_telegram_clone/widgets/list_chat.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF59779b),
        title: Text('Telegram'),
        actions: [
          IconButton(
              onPressed: null,
              disabledColor: Colors.white,
              icon: Icon(Icons.search_sharp))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.edit),
        backgroundColor: Color(0xFF59779b),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
                accountName: Text('Ariiq V Romero'),
                accountEmail: Text('ariiqromero@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage:
                      NetworkImage('https://picsum.photos/id/170/200/300'),
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://picsum.photos/id/123/200/300'),
                        fit: BoxFit.cover))),
            ListTile(
              title: Text('New Group'),
              leading: Icon(Icons.group),
            ),
            ListTile(
              title: Text('New Secret Chat'),
              leading: Icon(Icons.chat),
            ),
            ListTile(
              title: Text('New Channel'),
              leading: Icon(Icons.new_label),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text('Contacts'),
              leading: Icon(Icons.phone),
            ),
            ListTile(
              title: Text('Invite Friends'),
              leading: Icon(Icons.add_ic_call),
            ),
            ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings),
            ),
            ListTile(
              title: Text('Telegram FAQ'),
              leading: Icon(Icons.help_center),
            ),
          ],
        ),
      ),
      body: ListChat(),
    );
  }
}
