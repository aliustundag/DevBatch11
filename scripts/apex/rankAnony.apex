RankHandler rk = new RankHandler();
string p1 = rk.rankPrize(1);
system.debug('p1 is ' + p1);

string p2 = rk.rankPrize(2);
system.debug('p2 is ' + p2);

string p3 = rk.rankPrize(3);
system.debug('p3 is ' + p3);

string p8 = rk.rankPrize(8);
system.debug('p8 is ' + p8);

string p12 = rk.rankPrize(12);
system.debug('p12 is ' + p12);

//=========================================================


string a1 = rk.rankPrizeSwitch(1);
system.debug('p1 is ' + p1);

string a2 = rk.rankPrizeSwitch(2);
system.debug('a2 is ' + a2);

string a3 = rk.rankPrizeSwitch(3);
system.debug('a3 is ' + a3);

string a8 = rk.rankPrizeSwitch(8);
system.debug('a8 is ' + a8);

string a12 = rk.rankPrizeSwitch(12);
system.debug('a12 is ' + a12);