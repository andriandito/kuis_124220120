import 'package:flutter/material.dart';

class DetailUPNVY extends StatelessWidget {
  const DetailUPNVY({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail UPNVY'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          // Tambahkan SingleChildScrollView
          child: Column(
            children: [
              Image.asset('assets/upn.jpg'),
              const SizedBox(height: 20),
              const Text(
                'Pendidikan UPN',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight:
                        FontWeight.bold), // Ditambahkan style untuk judul
              ),
              const SizedBox(
                  height:
                      10), // Ditambahkan sedikit jarak antara judul dan paragraf
              const Text(
                'Arah pendidikan UPN ”Veteran” Yogyakarta adalah mengembangkan ilmu pengetahuan dan teknologi yang dilandasi oleh nilai-nilai kedisiplinan, kejuangan, kreativitas, keunggulan, kebangsaan, dan kejujuran dalam rangka menunjang pembangunan nasional melalui bidang pendidikan tinggi dalam rangka terciptanya sumber daya manusia yang unggul di era global dengan dilandasi jiwa bela negara. \n Tujuan Pendidikan \n Pendidikan di UPN ”Veteran” Yogyakarta bertujuan untuk: \n 1. Menyelenggarakan pendidikan dan pengajaran yang berkualitas guna menghasilkan lulusan berdaya saing global yang memiliki jiwa disiplin, berdaya juang dan, kreatif serta berwawasan kebangsaan dan mampu menjadi komponen pendukung dalam sistem pertahanan negara; \n 2. Meningkatkan kuantitas dan kualitas penelitian guna: \n a. Menunjang pengembangan mutu pendidikan dan pengajaran; \n b. Mengembangkan dan menerapkan ilmu pengetahuan dan teknologi (IPTEK) untuk menunjang pengabdian kepada masyarakat; dan \n c. Menghasilkan modal intelektual dan karya ilmiah dalam rangka menunjang pembangunan nasional; dan  \n 3. Pengembangan kegiatan pengabdian kepada masyarakat melalui \n a. Penyediaan layanan ilmu pengetahuan dan teknologi (IPTEK) dalam rangka meningkatkan kesejahteraan masyarakat; \n b. Peningkatan keberdayaan masyarakat; dan \n c. Peningkatan reputasi UPN ”Veteran” Yogyakarta.',
                style: TextStyle(fontSize: 14), // Ubah ukuran font menjadi 14
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
