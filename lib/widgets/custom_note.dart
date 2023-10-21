import 'package:flutter/material.dart';

class Note_Item extends StatelessWidget {
  const Note_Item({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 244, 94),
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'Title',
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),
            subtitle: const Padding(
              padding: EdgeInsets.only(top: 16, bottom: 16),
              child: Text(
                'Sub titel ',
                style: TextStyle(color: Colors.black54, fontSize: 18),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.delete),
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text("date",
                style: TextStyle(color: Colors.black.withOpacity(.4))),
          ),
        ],
      ),
    );
  }
}
