import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WalletView extends StatelessWidget {
  const WalletView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff19191A),
      appBar: AppBar(
        backgroundColor: const Color(0xff19191A),
        iconTheme: const IconThemeData(
          color: Color(0xffF83758),
        ),
        title: const Text(
          'Кошелёк',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Text(
                      'Текущий баланс',
                      style: TextStyle(
                        color: Color(0xff8F9098),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: SvgPicture.asset(
                          'assets/icons/coins.svg',
                          height: 9,
                          width: 10,
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const Text(
                        '15360',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 2 - 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              color: const Color(0xffF83758), width: 1.5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                  'assets/icons/transfer_money.svg'),
                              const SizedBox(
                                width: 4,
                              ),
                              const Text(
                                'Перевести деньги',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Color(0xffF83758),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2 - 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color(0xffF83758)),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset('assets/icons/export_money.svg'),
                              const SizedBox(
                                width: 4,
                              ),
                              const Text(
                                'Вывести деньги',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 32,
                    decoration: BoxDecoration(
                      color: const Color(0xff2A2A2A),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset('assets/icons/user_card.svg'),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                'Платёжные ревезиты',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 14,
                            color: Color(0xff939393),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            const Divider(
              color: Color(0xff444444),
              height: 0.5,
            ),
            const SizedBox(
              height: 32,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'История транзакций',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  MoneyOperationCard(text: 'Вывод монет', image: 'assets/icons/money_success.svg', dateString: '11 янв, 18:40', sumString: '-10 ₽', statusString: 'Успешно'),
                  MoneyOperationCard(text: 'Вывод монет', image: 'assets/icons/monney_wait.svg', dateString: '11 янв, 18:43', sumString: '-10 ₽', statusString: 'В процессе'),
                  MoneyOperationCard(text: 'Вывод монет', image: 'assets/icons/money_decline.svg', dateString: '11 янв, 18:53', sumString: '-10 ₽', statusString: 'Безуспешно'),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MoneyOperationCard extends StatelessWidget {
  final String image;
  final String text;
  final String sumString;
  final String dateString;
  final String statusString;
  const MoneyOperationCard(
      {super.key,
      required this.text,
      required this.image,
      required this.dateString,
      required this.sumString,
      required this.statusString});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(image),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      text,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      statusString,
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color(0xff939393),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  sumString,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color(0xff158F2C),
                  ),
                ),
                Text(
                  dateString,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    color: Color(0xff939393),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 12,),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            height: 0.5,
            width: MediaQuery.of(context).size.width - 78,
            color: const Color(0xff444444),
          ),
        ),
        SizedBox(height: 12,),
      ],
    );
  }
}
