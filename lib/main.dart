import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Settings',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[50],
      ),
      home: const ProfileScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Section
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Benjamin chiroma gaza',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Benjamingaza07@gmail.com',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const CircleAvatar(
                      radius: 20,
                      backgroundColor: Color.fromARGB(255, 136, 194, 241),
                      backgroundImage: AssetImage('assets/5857366881373719320.jpg'),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              // Account Section
              _buildSectionHeader('Account'),
              _buildMenuItem(
                icon: Icons.person_outline,
                iconColor: Colors.blue,
                title: 'My profile',
                onTap: () {},
              ),
             _buildMenuItem(
                icon: Icons.verified,
                iconColor: Colors.blue,
                title: 'Account verification',
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.orange[50],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.access_time, color: Colors.orange[700], size: 14),
                          const SizedBox(width: 4),
                          Text(
                            '2 Pending',
                            style: TextStyle(
                              color: Colors.orange[700],
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Icon(Icons.chevron_right, color: Colors.grey),
                  ],
                ),
                onTap: () {},
              ),
              _buildMenuItem(
                icon: Icons.account_balance,
                iconColor: Colors.blue,
                title: 'Connect bank',
                onTap: () {},
              ),
              _buildMenuItem(
                icon: Icons.people_outline,
                iconColor: Colors.blue,
                title: 'Next of kin',
                onTap: () {},
              ),
              _buildMenuItem(
                icon: Icons.notifications_outlined,
                iconColor: Colors.blue,
                title: 'Notification',
                onTap: () {},
              ),

              const SizedBox(height: 20),

              // Security Section
              _buildSectionHeader('Security'),
              _buildMenuItem(
                icon: Icons.grid_3x3,
                iconColor: Colors.blue,
                title: 'Change password',
                onTap: () {},
              ),
              _buildMenuItem(
                icon: Icons.dialpad,
                iconColor: Colors.blue,
                title: 'Change pin',
                onTap: () {},
              ),

              const SizedBox(height: 20),

              // Help and Support Section
              _buildSectionHeader('Help and support'),
              _buildMenuItem(
                icon: Icons.chat_bubble_outline,
                iconColor: Colors.blue,
                title: 'Chat with support',
                onTap: () {},
              ),
              _buildMenuItem(
                icon: Icons.info_outline,
                iconColor: Colors.blue,
                title: 'FAQs',
                onTap: () {},
              ),

              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: 3,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.refresh),
            label: 'Cycles',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long_outlined),
            label: 'Transactions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required Color iconColor,
    required String title,
    Widget? trailing,
    required VoidCallback onTap,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Icon(icon, color: iconColor, size: 26),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        trailing: trailing ?? const Icon(Icons.chevron_right, color: Colors.grey),
        onTap: onTap,
      ),
    );
  }
}