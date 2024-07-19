import 'package:flutter/material.dart';
import 'database_helper.dart';

class UserListScreen extends StatefulWidget {
  @override
  _UserListScreenState createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  List<Map<String, dynamic>> _users = [];

  @override
  void initState() {
    super.initState();
    _loadUsers();
  }

  Future<void> _loadUsers() async {
    final users = await DatabaseHelper.instance.getUsers();
    setState(() {
      _users = users;
    });
  }

  Future<void> _clearUsers() async {
    await DatabaseHelper.instance.clearUsers();
    _loadUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User List'),
        actions: [
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () async {
              await _clearUsers();
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _users.length,
        itemBuilder: (context, index) {
          final user = _users[index];
          return ListTile(
            title: Text(user['username']),
            subtitle: Text('User ID: ${user['id']}'),
          );
        },
      ),
    );
  }
}
