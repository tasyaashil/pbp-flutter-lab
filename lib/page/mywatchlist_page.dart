import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:counter_7/model/mywatchlist.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/page/formtambah.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/data.dart';


class MyWatchlistPage extends StatefulWidget {
    const MyWatchlistPage({Key? key}) : super(key: key);

    @override
    _MyWatchlistState createState() => _MyWatchlistState();
}

class _MyWatchlistState extends State<MyWatchlistPage> {
    Future<List<MyWatchlist>> fetchMyWatchlist() async {
        var url = Uri.parse('https://natasya-tugas3.herokuapp.com/mywatchlist/json/');
        var response = await http.get(
        url,
        headers: {
            "Access-Control-Allow-Origin": "*",
            "Content-Type": "application/json",
        },
        );

        // melakukan decode response menjadi bentuk json
        var data = jsonDecode(utf8.decode(response.bodyBytes));

        // melakukan konversi data json menjadi object ToDo
        List<MyWatchlist> listMyWatchlist = [];
        for (var d in data) {
        if (d != null) {
            listMyWatchlist.add(MyWatchlist.fromJson(d));
        }
        }

        return listMyWatchlist;
    }
      @override
      Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
              title: const Text('My Watchlist'),
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
            body: FutureBuilder(
                future: fetchMyWatchlist(),
                builder: (context, AsyncSnapshot snapshot) {
                  if (snapshot.data == null) {
                    return const Center(child: CircularProgressIndicator());
                  } else {
                    if (!snapshot.hasData) {
                      return Column(
                        children: const [
                          Text(
                            "Tidak ada isi watch list :(",
                            style:
                                TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                          ),
                          SizedBox(height: 8),
                        ],
                      );
                    } else {
                      return ListView.builder(
                          itemCount: snapshot.data!.length,
                          itemBuilder: (context, index) => Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 12),
                                padding: const EdgeInsets.all(20.0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15.0),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.black, blurRadius: 2.0)
                                    ]),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${snapshot.data![index].title}",
                                      style: const TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Text("${snapshot.data![index].completed}"),
                                  ],
                                ),
                              ));
                    }
                  }
                }));
  }
}
