import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu/data/models/detail_product_response.dart';

import '../../data/services/detail_product_service.dart';
import '../../utils/service_locator.dart';

part 'detail_state.dart';

class DetailCubit extends Cubit<DetailState> {
  DetailCubit() : super(DetailInitial());
  final detailProductService = getIt.get<DetailProductService>();

  Future<void> getDetailProduct(int id) async {
    try {
      emit(DetailLoading());
      final detailProduct = await detailProductService.getDetailProduct(id);
      emit(DetailSuccess(detailProduct: detailProduct));
      
    } catch (e) {
      emit(DetailError());
    
    }
  }


}
