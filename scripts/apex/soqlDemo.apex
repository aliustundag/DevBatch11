SoqlDemo.accountSOQL_1();
SoqlDemo.accountSOQL_2();
SoqlDemo.accountSOQL_3();
SoqlDemo.soqlDemo_Filter();
SoqlDemo.soqlDemo_Filter('2 min ago');

list<string> accs = new list<string>{'SoftIn','2 min ago'};
SoqlDemo.accountSOQL_Filter(accs);