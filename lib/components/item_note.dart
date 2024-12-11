import 'package:flutter/material.dart';
import 'package:hello_app/pages/note_page.dart';
import 'package:hello_app/model/note.dart';

class ItemNote extends StatelessWidget {
  const ItemNote({super.key, required this.tea});

  final Tea tea;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => NotePage(tea: tea),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: Column (
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network(tea.image),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    tea.name,
                    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NotePage(tea: tea)
                        )
                    );
                  },
                      child: const Text('Подробнее')
              ),
            ),
          ]
          ),
        ),
      ),
    );
  }
}