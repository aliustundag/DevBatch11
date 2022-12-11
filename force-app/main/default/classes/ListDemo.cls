public class ListDemo {

    public static void candidatesList(){

        List<String> listCandidates = new list<string>();
        listCandidates.add('Marc');
        listCandidates.add('Elon');
        listCandidates.add('Bill');
        listCandidates.add('James');
        listCandidates.add('Jone');
        system.debug('candidates are '+ listCandidates);

    }

    public static string candidatesList(integer i){

        List<String> listCandidates = new list<string>();
        listCandidates.add('Marc');
        listCandidates.add('Elon');
        listCandidates.add('Bill');
        listCandidates.add('James');
        listCandidates.add('Jone');
        system.debug('candidates are '+ listCandidates);


        string returnString = '';
        if (i >=0 && i<listCandidates.size()) {
            returnString =  listCandidates[i];
            
        } else {
          returnString = 'No Values Found';
            
        }
        return returnString;
    }

    public static void randomIntegerList(){

        List<Integer> listInteger = new List<Integer>();
        listInteger.add(10);
        listInteger.add(100);
        listInteger.add(25);
        listInteger.add(43);

        system.debug(listInteger);
        listInteger.sort();
        system.debug('after sort ---> ' + listInteger);

        Integer index1Value = listInteger.get(1);
        Integer index3Value = listInteger.get(3);
    
        system.debug(listInteger);
        system.debug('1 index '+ index1Value);
        system.debug('2 index '+ index3value);
    }

    public static void allCats(){

        list<cat> listAllCats = new list<cat>();
        Cat cat1 = new Cat('Leo', 'Brown');
        Cat cat2 = new Cat('Luna','Orange');
        Cat cat3 = new Cat('Fluffykins', 'White');

        listAllCats.add(cat1);
        listAllCats.add(cat2);
        listAllCats.add(cat3);

        system.debug('All Cat List '+ listAllCats);

        




    }



}
