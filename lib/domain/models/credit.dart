class Credit {
  Credit(
      {this.name,
      this.amount,
      this.cardNumber,
      this.colorStart,
      this.colorEnd});

  final String? name;
  final double? amount;
  final String? cardNumber;
  final String? colorStart;
  final String? colorEnd;

  static List<Credit> creditMock() => [
    Credit(
      name: 'Salary',
      amount: 2230,
      cardNumber: '** 6917',
      colorStart: 'EAEAEA',
      colorEnd: 'B2D0CE'
    ),
    Credit(
        name: 'Savings account',
        amount: 5566,
        cardNumber: '** 4552',
        colorStart: 'FCFFDF',
        colorEnd: 'F1FE87'
    ),
    Credit(
        name: 'Savings account',
        amount: 2230,
        cardNumber: '** 4552',
        colorStart: 'F2EFF4',
        colorEnd: 'B8A9C6'
    ),
  ];
}
