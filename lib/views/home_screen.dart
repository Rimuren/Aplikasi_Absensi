import 'package:flutter/material.dart';
import './absensi_screen.dart';
import './riwayat_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _halamanSaatIni = 0;
  final List<Widget> _halaman = [
    const AbsensiScreen(),
    const RiwayatScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aplikasi Absensi'),
      ),
      body: _halaman[_halamanSaatIni],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _halamanSaatIni,
        onTap: (index) {
          setState(() {
            _halamanSaatIni = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.check_box),
            label: 'Absensi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Riwayat',
          ),
        ],
      ),
    );
  }
}
