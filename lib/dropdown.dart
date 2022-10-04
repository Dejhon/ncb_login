import 'package:flutter/material.dart';

class DropDownList extends StatefulWidget {
  @override
  _DropDownListState createState() {
    return _DropDownListState();
  }
}

class _DropDownListState extends State<DropDownList> {
  bool _expanded = false;
  bool _expanded1 = false;
  bool _expanded2 = false;
  bool _expanded3 = false;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
// BANK ACCOUNTS
      Container(
          margin: const EdgeInsets.all(10),
          color: Colors.white,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: ExpansionPanelList(
              elevation: 0,
              children: [
                ExpansionPanel(
                  backgroundColor: const Color.fromARGB(255, 131, 130, 130),
                  headerBuilder: (context, isExpanded) {
                    return const ListTile(
                      title: Text(
                        'Bank Accounts',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    );
                  },
                  body: Container(
                      child: Container(
                    child: Column(
                      children: [
                        Container(
                          width: 400.0,
                          margin: const EdgeInsets.only(left: 10, right: 10),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                          // margin: const EdgeInsets.all(0),
                          child: TextButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'New Debit Card?',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Color.fromARGB(255, 1, 34, 92)),
                                  ),
                                  Container(
                                    child: Row(
                                      children: const [
                                        Text(
                                          'Activate Here',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.blueGrey),
                                        ),
                                        Icon(Icons.chevron_right,
                                            size: 20, color: Colors.blueGrey)
                                      ],
                                    ),
                                  )
                                ],
                              )),
                        ),
                        Container(
                          width: 315.0,
                          margin: const EdgeInsets.only(bottom: 10, top: 15),
                          padding: const EdgeInsets.only(
                              top: 10, right: 15, left: 15),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text(
                                          'SAVINGS',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 1, 34, 92),
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'Account Balance',
                                          style: TextStyle(
                                              color: Colors.blueGrey,
                                              fontSize: 16),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                        top: 15, bottom: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text(
                                          '...1234',
                                          style: TextStyle(
                                              color: Colors.blueGrey,
                                              fontSize: 17),
                                        ),
                                        Text(
                                          'JMD 20,130.35',
                                          style: TextStyle(
                                              color: Colors.blueGrey,
                                              fontSize: 16),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(
                                      onPressed: () => {},
                                      child: Row(
                                        children: const [
                                          Text(
                                            'Account Details',
                                            style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 16,
                                            ),
                                          ),
                                          Icon(Icons.arrow_right_alt, size: 23)
                                        ],
                                      ))
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
                  isExpanded: _expanded,
                  canTapOnHeader: true,
                ),
              ],
              dividerColor: Colors.grey,
              expansionCallback: (panelIndex, isExpanded) {
                _expanded = !_expanded;
                _expanded1 = false;
                _expanded2 = false;
                _expanded3 = false;
                setState(() {});
              },
            ),
          )),
// END OF BANK ACCOUNTS

// CREDIT CARDS
      Container(
          margin: const EdgeInsets.all(10),
          color: Colors.white,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: ExpansionPanelList(
              elevation: 0,
              // animationDuration: const Duration(milliseconds: 500),
              children: [
                ExpansionPanel(
                  backgroundColor: const Color.fromARGB(255, 131, 130, 130),
                  headerBuilder: (context, isExpanded) {
                    return const ListTile(
                      title: Text(
                        'Credit Cards',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    );
                  },
                  body: Container(
                      child: Container(
                    child: Column(
                      children: [
                        Container(
                          width: 400.0,
                          margin: const EdgeInsets.only(left: 10, right: 10),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                          // margin: const EdgeInsets.all(0),
                          child: TextButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'New Credit Card?',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Color.fromARGB(255, 1, 34, 92)),
                                  ),
                                  Container(
                                    child: Row(
                                      children: const [
                                        Text(
                                          'Activate Here',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.blueGrey),
                                        ),
                                        Icon(Icons.chevron_right,
                                            size: 20, color: Colors.blueGrey)
                                      ],
                                    ),
                                  )
                                ],
                              )),
                        ),
                        Container(
                          width: 315.0,
                          height: 47.0,
                          margin: const EdgeInsets.only(bottom: 10, top: 15),
                          padding: const EdgeInsets.only(
                              top: 10, right: 15, left: 15),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Text(
                                    'No credit card accounts present.',
                                    style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
                  isExpanded: _expanded1,
                  canTapOnHeader: true,
                ),
              ],
              dividerColor: Colors.grey,
              expansionCallback: (panelIndex, isExpanded) {
                _expanded1 = !_expanded1;
                _expanded = false;
                _expanded2 = false;
                _expanded3 = false;
                setState(() {});
              },
            ),
          )),
// END OF CREDIT CARDS

// INVESTMENTS
      Container(
          margin: const EdgeInsets.all(10),
          color: Colors.white,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: ExpansionPanelList(
              elevation: 0,
              // animationDuration: const Duration(milliseconds: 500),
              children: [
                ExpansionPanel(
                  backgroundColor: const Color.fromARGB(255, 131, 130, 130),
                  headerBuilder: (context, isExpanded) {
                    return const ListTile(
                      title: Text(
                        'Investments',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    );
                  },
                  body: Container(
                      margin: const EdgeInsets.all(10),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                                width: 400.0,
                                margin:
                                    const EdgeInsets.only(left: 10, right: 10),
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
                                // margin: const EdgeInsets.all(0),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: const [
                                          Text(
                                            'No investment accounts present.',
                                            style: TextStyle(
                                                color: Colors.blueGrey,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      )),
                  isExpanded: _expanded2,
                  canTapOnHeader: true,
                ),
              ],
              dividerColor: Colors.grey,
              expansionCallback: (panelIndex, isExpanded) {
                _expanded2 = !_expanded2;
                _expanded = false;
                _expanded1 = false;
                _expanded3 = false;
                setState(() {});
              },
            ),
          )),
// END OF INVESTMENTS

// LOANS
      Container(
          margin: const EdgeInsets.all(10),
          color: Colors.white,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: ExpansionPanelList(
              elevation: 0,
              // animationDuration: const Duration(milliseconds: 500),
              children: [
                ExpansionPanel(
                  backgroundColor: const Color.fromARGB(255, 131, 130, 130),
                  headerBuilder: (context, isExpanded) {
                    return const ListTile(
                      title: Text(
                        'Loans',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    );
                  },
                  body: Container(
                      margin: const EdgeInsets.all(10),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                                width: 400.0,
                                margin:
                                    const EdgeInsets.only(left: 10, right: 10),
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
                                // margin: const EdgeInsets.all(0),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: const [
                                          Text(
                                            'No loan accounts present.',
                                            style: TextStyle(
                                                color: Colors.blueGrey,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      )),
                  isExpanded: _expanded3,
                  canTapOnHeader: true,
                ),
              ],
              dividerColor: Colors.grey,
              expansionCallback: (panelIndex, isExpanded) {
                _expanded3 = !_expanded3;
                _expanded = false;
                _expanded2 = false;
                setState(() {});
              },
            ),
          )),
// END OF LOANS
    ]);
  }
}
