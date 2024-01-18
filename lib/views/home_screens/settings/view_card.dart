import 'package:abc_banking/views/widgets/exports.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class CardDetails extends StatefulWidget {
  final String accountName;
  final String cardNumber;
  final String cvv;
  final String expirydate;

  const CardDetails({
    super.key,
    required this.accountName,
    required this.cardNumber,
    required this.cvv,
    required this.expirydate,
  });

  @override
  State<CardDetails> createState() => _CardDetailsState();
}

class _CardDetailsState extends State<CardDetails> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        leading: CircledButton(
          height: 55,
          icon: Icons.arrow_back_ios_new,
          onTap: (() => Navigator.pop(context)),
        ),
        title: Text(
          'Card Details',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlipCard(
              flipOnTouch: true,
              back: BankCard(
                borderColor: true,
                firstColor: const Color.fromARGB(255, 138, 111, 201),
                widget: Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 2, right: 2),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          color: MainColors.black,
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Container(
                          width: 200,
                          height: 40,
                          color: const Color.fromARGB(255, 110, 110, 110),
                          child: Center(child: Text('Cvv2   ${widget.cvv}')),
                        ),
                      ]),
                ),
              ),
              front: BankCard(
                borderColor: true,
                widget: Padding(
                  padding:
                      const EdgeInsets.only(top: 15.0, left: 40, right: 25),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'ABC Banking Group',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                  ),
                            ),
                            const Expanded(child: SizedBox()),
                            Text(
                              'Visa Debit',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                  ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset(
                              'assets/images/contactless.svg',
                              colorFilter: const ColorFilter.mode(
                                  Colors.white, BlendMode.srcIn),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SvgPicture.asset(
                          'assets/images/chip.svg',
                          colorFilter: const ColorFilter.mode(
                              Colors.white, BlendMode.srcIn),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          widget.cardNumber,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                                color: const Color.fromARGB(255, 255, 255, 255),
                              ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Expires\nEnd',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .copyWith(
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                    ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Text(
                                widget.expirydate,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                    ),
                              ),
                            ]),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          widget.accountName,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                                color: const Color.fromARGB(255, 255, 255, 255),
                              ),
                        ),
                      ]),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          if (isVisible == true) Text(
                  'Your Pin is 1184',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                ) else const SizedBox.shrink(),
          const SizedBox(
            height: 15,
          ),
          CircledButton(
            width: 80,
            height: 80,
            text: 'Tap here to view Pin',
            onTap: () {
              setState(() {
                isVisible = !isVisible;
              });
            },
            icon: Icons.visibility,
          )
        ],
      ),
    );
  }
}
