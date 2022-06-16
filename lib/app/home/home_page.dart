import 'package:cryptos_dio/app/home/home_controller.dart';
import 'package:flutter/material.dart';
import './widgets/header.dart';
import 'package:get/get.dart';


class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(),
          Container(
            height: MediaQuery.of(context).size.height - 262,
            child: controller.obx(
              (state) {
                return ListView.builder(
                  itemCount: state.length,
                  itemBuilder: (_, index) {
                    final item = state[index];
                    return ListTile(
                      title: Text(item.name),
                      subtitle: Text(
                          "R\$ ${item.currentPrice.toDouble().toStringAsFixed(2)}"),
                      trailing: percentComponet(item.priceChangePercentage24h),
                      leading: Image.network(
                        item.image,
                        width: 50,
                        height: 150,
                      ),
                    );
                  },
                );
              },
              onError: (error) {
                return Center(
                  child: Text(error!),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget percentComponet(double value) {
    Color color = value > 0 ? Colors.green : Colors.red;
    return Text(
      "${value.toStringAsFixed(2)} %",
      style: TextStyle(
        color: color,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
