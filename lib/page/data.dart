import 'package:counter_7/page/formtambah.dart';
import 'package:counter_7/main.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/model/model.dart';
import 'package:counter_7/model/mywatchlist.dart';
import 'package:counter_7/page/mywatchlist_page.dart';


class DataPage extends StatefulWidget {
    const DataPage({super.key});

    @override
    State<DataPage> createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Data Budget'),
            ),
            drawer: Drawer(
            child: Column(
              children: [
                ListTile(
                  title: const Text('counter_7'),
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const MyHomePage(title: 'Program Counter',)),
                    );
                  },
                ),
                ListTile(
                  title: const Text('Tambah Budget'),
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const MyFormPage()),
                    );
                  },
                ),
                ListTile(
                title: const Text('Data Budget'),
                onTap: () {
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
            ]),
          ),
          body: ListView.builder(
            itemCount: ListBudget.data.length,
            itemBuilder: (context, index) {
              final instance = ListBudget.data[index];
              return ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1),
                  side: const BorderSide(color: Colors.black, width: 0.3),
                ),
                title: Text(instance.judul),
                subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(instance.nominal.toString()),
                      Text(instance.jenis)
                    ]),
                  );
                },
              ),
            );
          }
        }