import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../network/diohelper.dart'; 
part 'gold_silver_state.dart';

class MainCubit extends Cubit<SState> {
  MainCubit() : super(InitialState());
  static MainCubit get(context)=>BlocProvider.of(context);
    double? goldD;
  int? goldI;
  double? SilverD;
  int? SilverI;

  getGoldPrice() {
    DioHelper.getData('XAU/EGP').then((value) {
     
        goldD = value.data['price_gram_21k'];
        goldI = goldD?.toInt(); // Update goldI with the correct value
        print(goldD);
     emit(GetGoldPriceState());
    }).catchError((onError) {
      print(onError.toString());
    });
  }
  getSilverPrice() {
    DioHelper.getData('XAG/EGP').then((value) {
      
        SilverD = value.data['price_gram_21k'];
        SilverI = SilverD?.toInt(); // Update goldI with the correct value
        
    emit(GetSilverPriceState());
    }).catchError((onError) {
     
    });
  }
}
