import 'dart:ffi';

import 'package:flutter/cupertino.dart';

ValueNotifier<int> currentOnboardingPage = ValueNotifier(0);
ValueNotifier<bool> isPasswordVisible = ValueNotifier(false);