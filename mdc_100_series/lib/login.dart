import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Add text editing controllers
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            const SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('assets/diamond.png'),
                const SizedBox(height: 16.0),
                Text(
                  'SHRINE',
                  style: Theme.of(context).textTheme.headlineSmall, // Updated to use theme
                ),
              ],
            ),
            const SizedBox(height: 120.0),

            // Username Field
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                
                labelText: 'Username',
              ),
            ),
            
            const SizedBox(height: 12.0),

            // Password Field
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                
                labelText: 'Password',
              ),
              obscureText: true,
            ),

            const SizedBox(height: 24.0),

            // Button Bar
            OverflowBar(
              alignment: MainAxisAlignment.end,
              children: <Widget>[
                // Cancel Button
               TextButton(
  child: const Text('CANCEL'),
  onPressed: () {
    _usernameController.clear();
    _passwordController.clear();
  },
  style: TextButton.styleFrom(
    foregroundColor: Color(0xFF3E2723),
    shape: const BeveledRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(7.0)),
    ),
  ),
),

                // Next Button
                ElevatedButton(
                  child: const Text('NEXT'),
                  onPressed: () {
                     _usernameController.clear();
                     _passwordController.clear();
                    // TODO: Show the next page
                            // TODO: Show the next page (101) 
        Navigator.pop(context);
                  },
                   style: ElevatedButton.styleFrom( 
                    foregroundColor: Color(0xFF3E2723),
                    backgroundColor: Color(0xFFF8BBD0),
                    elevation: 8.0, // Raised elevation
                    shape: const BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7.0)),
                   ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Dispose controllers to avoid memory leaks
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
