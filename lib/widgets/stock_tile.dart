import 'package:flutter/material.dart';
import '../models/stock.dart';

class StockTile extends StatelessWidget {
  final Stock stock;

  const StockTile({super.key, required this.stock});

  @override
  Widget build(BuildContext context) {
    return Card(
  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
  elevation: 3,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10)),
  child: ListTile(
    title: Text(
      stock.name,
      style: const TextStyle(fontWeight: FontWeight.bold)),
    subtitle: Text("₹${stock.price}"),
    trailing: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "${stock.change}%",
          style: TextStyle(
            color: stock.change >= 0 ? Colors.green : Colors.red,
          fontWeight: FontWeight.bold)),
        Icon(
          stock.change >= 0 ? Icons.arrow_upward : Icons.arrow_downward,
          color: stock.change >= 0 ? Colors.green : Colors.red,
          size: 16 ) ]) )); }
}