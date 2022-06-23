enum FormOfPayment {
  pix,
  creditCard,
  debitCard,
}

class SaleModel {
  final FormOfPayment formOfPayment;
  final double discount;
  final double change; // (troco) sempre 0 por das formas de pagamento
  final double totalValue;
  final double totalQuantityItems;

  SaleModel(this.formOfPayment, this.discount, this.totalValue,
      this.totalQuantityItems,
      {this.change = 0.0});
}
