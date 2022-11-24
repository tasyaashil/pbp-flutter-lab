import 'package:counter_7/model/mywatchlist.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/page/mywatchlist_page.dart';
import 'package:counter_7/page/formtambah.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/data.dart';

class WatchlistDetailPage extends StatelessWidget {
  const WatchlistDetailPage({super.key, 
      required this.mywatchlist, required watchlist});

  final MyWatchlist mywatchlist;


  @override
  Widget build(BuildContext context) {
    String releasevar;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Detail'),
        ),
        drawer: Drawer(
              child: Column(
                children: [
                  // Menambahkan clickable menu
                    ListTile(
                  title: const Text('counter_7'),
                  onTap: () {
                    // Route menu ke halaman utama
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const MyHomePage(title: 'Program Counter',)),
                    );
                  },
                ),
                ListTile(
                  title: const Text('Tambah Budget'),
                  onTap: () {
                    // Route menu ke halaman form
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const MyFormPage()),
                    );
                  },
                ),
                ListTile(
                title: const Text('Data Budget'),
                onTap: () {
                  // Route menu ke halaman form
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const DataPage()),
                  );
                },
              ),
              ListTile(
              title: const Text('My Watch List'),
              onTap: () {
                // Route menu ke halaman form
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyWatchlistPage()),
                  );
                },
              ),
                ],
              ),
            ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20.0),
            Container(
              child: Align(
              alignment: Alignment.center,
            
            )),
            const SizedBox(height: 20.0),
            Row(children: [
           const Text("Release Date: ",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Expanded(
                    child: Text(
                      "${mywatchlist.fields.rating.toString()} ",
                      style: const TextStyle(fontSize: 16),
                    )
                  )
                ],
            ),
            const SizedBox(height: 20.0),
            Row(children: [
                const Text("Rating: ",
                style:
                TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Expanded(
                    child: Text(
                      "${mywatchlist.fields.rating.toString()} / 10",
                      style: const TextStyle(fontSize: 16),
                    ),
                  )
                ],
              ),
            const SizedBox(height: 20.0),
            Row(children: [
              const Text("Status: ",
              style:
                TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Expanded(
                    child: Text(
                      mywatchlist.fields.watched ? "Watched" : "Not Watched",
                      style: const TextStyle(fontSize: 16),
                    ),
                  )
                ],
              ),
            const SizedBox(height: 20.0),
            Row(
                children: const <Widget>[
                const Text("Review: ",
                style:
                  TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ],
              ),
            Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: TextButton(
                      onPressed: (() {
                        Navigator.pop(context);
                      }),
                      child: Text(
                        'Back',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blue)),
                    ))),
          ],
        ));
  }
}