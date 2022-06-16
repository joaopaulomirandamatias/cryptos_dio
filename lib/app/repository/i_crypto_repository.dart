import 'package:cryptos_dio/app/model/cryto_model.dart';

abstract class ICryptoRepository {
  Future<List<CryptoModel>> findAllCripto();
}
