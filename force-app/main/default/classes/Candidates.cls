public class Candidates {

    public string name;
    public string gender;
    public static string companyName;
    public static integer countCandidates = 0;

    public void printCandidate(){
        system.debug('Candidate name is '+ name + ' ('+gender+')');
        system.debug('company name is '+ companyName);
        system.debug('=======END=====');
    }

    public Candidates(){
        countCandidates++;

    }

    public Candidates(string n, string g){

        this();
        this.name = n;
        this.gender = g;
        system.debug(name + ' ' + gender);
    }
    
}
