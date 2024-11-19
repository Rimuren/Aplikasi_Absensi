import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/absensi_provider.dart';

class RiwayatScreen extends StatelessWidget {
  const RiwayatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final riwayat = Provider.of<AbsensiProvider>(context).riwayat;

    return riwayat.isEmpty
        ? const Center(
            child: Text('Belum ada riwayat absensi'),
          )
        : ListView.builder(
            itemCount: riwayat.length,
            itemBuilder: (context, index) {
              final catatan = riwayat[index];
              return ListTile(
                title: Text(
                  'Tanggal: ${catatan['tanggal'].toString().split(' ')[0]}',
                ),
                subtitle: Text(
                  'Hadir: ${catatan['hadir']}, Tidak Hadir: ${catatan['tidakHadir']}',
                ),
              );
            },
          );
  }
}