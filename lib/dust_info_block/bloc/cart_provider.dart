import 'package:flutter/widgets.dart';
import 'package:flutter_class/shopping_cart/bloc/cart_bloc.dart';

class CartProvider extends InheritedWidget {
  final CartBloc cartBloc;

  CartProvider(
      {required Key key, required CartBloc cartBloc, required Widget child})
      : cartBloc = cartBloc ?? CartBloc(),
        super(key: key, child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }

  static CartProvider? of(BuildContext context) {
    final CartProvider? result = context.dependOnInheritedWidgetOfExactType<CartProvider>();
    // if (result != null) {
    //   throw Exception('No CartBloc found in context');
    // }
    return result;
  }

}
