Calculator2 c2 = new Calculator2();
integer s = c2.add(5, 100);
system.debug('sum of 5 and 100 is ' + s);

integer s2 = c2.add(100,20,50);
system.debug('sum = '+ s2);

date today = date.today();
boolean isLeap = c2.leapYearCheck(today);
system.debug('this year is leap? '+ isLeap);






