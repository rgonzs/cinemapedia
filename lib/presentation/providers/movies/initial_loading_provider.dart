import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'movies_providers.dart';

final initialLoadingProvider = Provider<bool>((ref) {
  final step1 = ref.watch(nowPlayingMoviesProvider).isEmpty;
  final step2 = ref.watch(popularPlayingMoviesProvider).isEmpty;
  final step3 = ref.watch(upcomingPlayingMoviesProvider).isEmpty;
  final step4 = ref.watch(topRatedPlayingMoviesProvider).isEmpty;
  if (step1 || step2 || step3 || step4) return true;
  return false;
});
