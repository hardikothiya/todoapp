import 'package:flutter/foundation.dart';
import 'package:todoapp/modals/task_category.dart';
import 'package:flutter/material.dart';

const taskCategories = [
  TaskCategory(
      category: 'All',
      icon: Icon(Icons.task_alt_outlined, color: Colors.blueAccent)),
  TaskCategory(
      category: 'Work',
      icon: Icon(Icons.work_outline, color: Colors.orangeAccent)),
  TaskCategory(
      category: 'Travel',
      icon: Icon(Icons.car_rental, color: Colors.lightGreen)),
  TaskCategory(
      category: 'Study',
      icon: Icon(Icons.book_outlined, color: Colors.cyanAccent)),
  TaskCategory(
      category: 'Home',
      icon: Icon(Icons.home_outlined, color: Colors.deepPurpleAccent)),
  TaskCategory(
      category: 'Shopping',
      icon: Icon(Icons.add_shopping_cart_outlined, color: Colors.limeAccent)),
  TaskCategory(
      category: 'Bills',
      icon: Icon(Icons.receipt_long, color: Colors.orangeAccent)),
  TaskCategory(
      category: 'Music',
      icon: Icon(Icons.headset_outlined, color: Colors.tealAccent)),
];
