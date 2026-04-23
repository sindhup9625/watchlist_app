import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/watchlist_bloc.dart';
import '../bloc/watchlist_event.dart';
import '../bloc/watchlist_state.dart';
import '../widgets/stock_tile.dart';

class WatchlistScreen extends StatelessWidget {
  const WatchlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Watchlist"), centerTitle: true),
      body: BlocBuilder<WatchlistBloc, WatchlistState>(
        builder: (context, state) {
          return ReorderableListView.builder(
  itemCount: state.stocks.length,
onReorder: (oldIndex, newIndex) {
    if (newIndex > oldIndex) {
      newIndex--;
    }
 context.read<WatchlistBloc>().add(
      ReorderStockEvent(oldIndex, newIndex) );},

  itemBuilder: (context, index) {
    final stock = state.stocks[index];
  return Container(
      key: ValueKey(stock.name), 
      child: StockTile(stock: stock)); });}));}}