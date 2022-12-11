map<string, string> mapCountryCurrency = new map<string, string>();
mapCountryCurrency.put('USA', 'Dollar');
mapCountryCurrency.put('UK', 'Pound');
mapCountryCurrency.put('Turkey', 'Lira');
mapCountryCurrency.put('India', 'Rupees');
mapCountryCurrency.put('India', 'Rupee');
mapCountryCurrency.put('France', 'Euro');

system.debug(mapCountryCurrency);


string turkeyCurrency = mapCountryCurrency.get('Turkey');
system.debug('turkey currency is ---> ' + turkeyCurrency);

set<string> allcountries = mapCountryCurrency.keySet();
system.debug(allcountries);

list<string> allCurrencies = mapCountryCurrency.values();
system.debug(allCurrencies);

set<string> countriesSet = mapCountryCurrency.keySet();
for(string eachKey : countriesSet){
    string eachCurrency = mapCountryCurrency.get(eachkey);
    string printString = 'Country is '+ eachkey + ' , its currency is '+eachCurrency;
    system.debug(printString);

}
