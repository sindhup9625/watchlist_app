import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/stock.dart';
import 'watchlist_event.dart';
import 'watchlist_state.dart';

class WatchlistBloc extends Bloc<WatchlistEvent, WatchlistState> {
  WatchlistBloc() : super(WatchlistState(_stocks)) {
   on<ReorderStockEvent>((event, emit) {
  final updatedList = List<Stock>.from(state.stocks);

  final oldIndex = event.oldIndex;
  final newIndex = event.newIndex;

  final item = updatedList.removeAt(oldIndex);
  updatedList.insert(newIndex, item);

  emit(WatchlistState(updatedList));
 
}); }}

final List<Stock> _stocks = [
  Stock(name: "AAPL", price: 150, change: 1.2),
  Stock(name: "GOOGL", price: 2800, change: -0.5),
  Stock(name: "TSLA", price: 700, change: 2.1),
  Stock(name: "AMZN", price: 3300, change: -1.3)
];