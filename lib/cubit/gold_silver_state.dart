part of 'gold_silver_cubit.dart';

@immutable
abstract class SState {}

class InitialState extends SState {}
class GetGoldPriceState extends SState {}
class GetSilverPriceState extends SState {}
