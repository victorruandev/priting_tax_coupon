import 'package:priting_tax_coupon/src/shared/models/address_model.dart';

class ConsumerModel {
  final String? name;
  final String? cpf; // ou cnpj ou Id. Estrangeiro
  final AddressModel? address;

  ConsumerModel(this.name, this.cpf, this.address);
}
