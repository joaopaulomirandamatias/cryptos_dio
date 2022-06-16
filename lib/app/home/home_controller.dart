import 'package:get/get.dart';

import 'package:cryptos_dio/app/repository/i_crypto_repository.dart';

// Controller: Nossos controllers, nada mais são, que os responsáveis pelas nossas
// regras de negócio, alterações de estado, também é onde criaremos nossos observáveis
// com seus respectivos estados iniciais e os eventos que serão responsáveis por alterar
// esses estados.
//Controladores são classes que detém toda a nossa lógica de negócios. Todas as variáveis
//e métodos são colocados aqui e podem ser acessados a partir do ponto de vista.

class HomeController extends GetxController with StateMixin {
  //O método StateMixin muda o Estado quando quisermos. Basta passar
  //os dados e o status desta

  final ICryptoRepository _criptoRepository;

  HomeController(
    this._criptoRepository,
  );

  @override
  void onInit() {
    super.onInit();
    findCripto();
  }

  void findCripto() async {
    // here you can put your custom loading indicator, but
    // by default would be Center(child:CircularProgressIndicator())
    change([], status: RxStatus.loading());
    try {
      final dados = await _criptoRepository.findAllCripto();
      change(dados, status: RxStatus.success());
    } catch (e) {
      // ignore: avoid_print
      print('O Erro é: $e');
      change([], status: RxStatus.error('Erro ao carregar os dados da API'));
    }
  }
}
