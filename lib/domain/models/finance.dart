class FinanceModel {
  FinanceModel({this.name, this.pathIcon, this.bgColor});

  final String? name;
  final String? pathIcon;
  final String? bgColor;

  static List<FinanceModel> mockData() => [
        FinanceModel(
          name: 'My bonuses',
          pathIcon: 'assets/icons/star.png',
          bgColor: 'F2FE8D',
        ),
        FinanceModel(
          name: 'My budget',
          pathIcon: 'assets/icons/wallet.png',
          bgColor: 'B2D0CE',
        ),
        FinanceModel(
          name: 'Finance analysis',
          pathIcon: 'assets/icons/chart.png',
          bgColor: 'AA9EB7',
        ),
        FinanceModel(
          name: 'My bonuses',
          pathIcon: 'assets/icons/star.png',
          bgColor: 'F2FE8D',
        ),
      ];
}
