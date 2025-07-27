import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Example provider replacing old GetX controllers
final counterProvider = StateProvider<int>((ref) => 0);
