import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final doodleDashViewModelProvider = ChangeNotifierProvider((ref) => DoodleDashViewModel());

class DoodleDashViewModel extends ChangeNotifier {}