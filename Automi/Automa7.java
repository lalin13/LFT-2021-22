/*
 * Membri Gruppo:
 * Lara Novelli, matricola: 916272
 * Federica Pucci, metricola: 933366
 */
public class Automa7 {/* DFA che riconosca il linguaggio di stringhe che
    contengono il mio nome e tutte le stringhe ottenute dopo la sostituzione di un carattere del nome
    con un altro qualsiasi */
    public static boolean scan(String s)
    {
	int state = 0;
	int i = 0;

	while (state >= 0 && i < s.length()) {
	    final char ch = s.charAt(i++);
	    switch (state) {
	    case 0:
		if(ch=='L'||ch=='l')
            state = 1;

		else
		    state = 5;
		break;


	    case 1:
        if(ch=='a')
            state = 2;
		else state=6;
        break;

       
	    case 2:
		if(ch=='r')
            state = 3;

		else
		    state = 7;
		break;

        
        case 3:   
          state = 4;

          break;

        case 4:
            state = -1;
            break;

        case 5:
        if(ch=='a'){state = 6;}
            
        else 
            state = -1;

        break;

        case 6:
        if(ch=='r'){
            state = 7;
        }
        else 
            state = -1;

        break;


	    case 7:
        if(ch=='a')
            state = 4;
		
		else
		    state = -1;
		break;
	
	} 
    
    }
    return state == 4; 

    }

    public static void main(String[] args)
    {
	System.out.println(scan("Lara") ? "OK" : "NOPE");
    }
}