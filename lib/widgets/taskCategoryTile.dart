import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class taskCategoryTile extends StatelessWidget {
  final String title;
  final Icon icon;
  const taskCategoryTile({required this.icon, required this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 2,
          margin: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Flexible(
                flex: 4,
                child: IconButton(
                  onPressed: () {},
                  icon: icon,
                  iconSize: 50,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text('O Tasks')
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
