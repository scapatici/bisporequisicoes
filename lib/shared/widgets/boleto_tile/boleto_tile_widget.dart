import 'package:flutter/material.dart';
import 'package:BispoRequisicoes/shared/models/boleto_model.dart';
import 'package:BispoRequisicoes/shared/themes/app_text_styles.dart';

class BoletoTileWidget extends StatelessWidget {
  final BoletoModel data;
  const BoletoTileWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(
          data.name!,
          style: TextStyles.titleListTile,
        ),
        subtitle: Text(
          "Feita em ${data.dueDate}",
          style: TextStyles.captionBody,
        ),
        trailing: Text.rich(TextSpan(
          text: "Qtd.: ", //"R\$ "
          style: TextStyles.trailingRegular,
          children: [
            TextSpan(
              text: "${data.value!.toStringAsFixed(0)}",
              style: TextStyles.trailingBold,
            ),
          ],
        )),
      ),
    );
  }
}
