import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:shrine/item.dart';

class CartModel extends ChangeNotifier {
  ///provides state of the items
  final List<Item> _items = [];

  UnmodifiableListView<Item> get items => UnmodifiableListView(_items);

  int get _totalPrice => _items.length * 42;

  ////function for adding item
  void addItem(Item item) {
    _items.add(item);
    notifyListeners();
  }

  ///to remove items
  void removeItem(Item item) {
    _items.remove(item);
    notifyListeners();
  }

  /// remove all items
  void removeAllItems(Item item) {
    _items.clear();
    notifyListeners();
  }
}
