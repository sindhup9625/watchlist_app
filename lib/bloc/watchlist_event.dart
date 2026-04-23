abstract class WatchlistEvent {}

class ReorderStockEvent extends WatchlistEvent {
  final int oldIndex;
  final int newIndex;

  ReorderStockEvent(this.oldIndex, this.newIndex);
}