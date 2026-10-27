import 'package:flutter/material.dart';

void main() {
    runApp(const MaterialApp(
    home: LayoutRulesExample(),
  ));
}

class LayoutRulesExample extends StatelessWidget {
  const LayoutRulesExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text('Tiga Aturan Layout Flutter'),
    ),
    body: const mypage3(),
    );
  }
}

class mypage1 extends StatelessWidget {
  const mypage1({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '1 & 2. Aturan Container batas dan size', 
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text('induk memaksa anak 100 x 100 - 200 x 200, anak minta 500 x 50, tapi di paksa mengikuti batas induk (mentok di lebar 200, tinggi 100)'),
            const SizedBox(height: 10),

            //  contoh aturan 1 & 2 
            ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 100,
                maxWidth: 200,
                minHeight: 100,
                maxHeight: 200,
              ),
              child: Container(
                width: 500,
                height: 50,
                color: Colors.blue,
                child: const Text("Saya minta 500 x 50", style: TextStyle(color: Colors.white), textAlign: TextAlign.center,),
              ),
            ),
          ]
        )
      )
    )
    ;
  }
}

class mypage2 extends StatelessWidget {
  const mypage2({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // const Divider(height: 40, thickness: 2),

          const Text(
            '2. Aturan Posisi (dengan Center)',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text('induk abu-abu berukuran 200x200. dirinya di tengah, jadi kita gunakan widget Center.'),
          const SizedBox(height: 10),

          // CONTOH KE 2 (CENTER)

          Container(
            width: 200,
            height: 200,
            color: Colors.grey[300],
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.green,
                child: const Text("Align", style: TextStyle(color: Colors.white), textAlign: TextAlign.center,),
              ),
            ),
          ),
        ]
      ),),
    );
  }
}

class mypage3 extends StatelessWidget {
  const mypage3({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // const Divider(height: 40, thickness: 2),

          const Text(
            '3. Aturan Posisi (dengan Align)',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text('Induk Abu-Abu berukuran 200x200 kotak di tempatkan di pojok kanan bawah menggunakan widget Align.'),
          const SizedBox(height: 10),

          // CONTOH KE 3 (ALIGN)
          Container(
            width: 200,
            height: 200,
            color: Colors.grey[300],
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 80,
                height: 80,
                color: Colors.green,
                child: const Text("Align", style: TextStyle(color: Colors.white), textAlign: TextAlign.center,),
              ),
            ),
          ),
        ]
      ),),
    );
  }
}