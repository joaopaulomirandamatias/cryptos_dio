import 'package:cryptos_dio/app/repository/crypto_repository.dart';
import 'package:cryptos_dio/app/repository/i_crypto_repository.dart';
import 'package:get/get.dart';
import 'package:cryptos_dio/app/home/home_controller.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<ICryptoRepository>(CryptoRepository());
    Get.put(HomeController(Get.find()));
  }
}

/**
 * Bindings: A classe Binding é uma classe que desacopla a injeção de dependência.
 * Isso permite conhecer qual tela está sendo exibida quando um controlador específico
 *  é usado e saber onde e como descartá-lo. Além disso, a classe Binding permitirá que
 *  você tenha o controle de configuração do SmartManager. Você pode configurar as 
 * dependências a serem organizadas ao remover uma rota da pilha, ou quando o widget
 *  que a utilizou for disposto, ou nenhuma delas.
 */