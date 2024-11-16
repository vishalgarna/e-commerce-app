import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Services/ApiServices.dart';
import '../Utils/Notifier/CartNotifier.dart';
import '../Utils/State/CartState.dart';

final CartProvider = StateNotifierProvider<CartNotifier, CartState>((ref){
  return CartNotifier(ref.watch(apiservice));
});