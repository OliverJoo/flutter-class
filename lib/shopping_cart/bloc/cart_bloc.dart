import 'package:flutter_bloc/flutter_bloc.dart';

import '../item.dart';

enum CartEventType{
  add, remove
}

class CartEvent{
  final CartEventType type;
  final Item item;

  CartEvent(this.type, this.item);
}

class CartBloc{


}