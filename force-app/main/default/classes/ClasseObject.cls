public class ClasseObject {
    public void metodo(){ //especifico objetos
        Account acc = new Account();
        acc.Name = 'Teste';
        acc.Phone = '13996703463';
        system.debug('Account = ' + acc);
    }
    
    public void metodoGenerico(){
        sObject obj = new Account(Name='Teste');
        Account acc = (Account)obj; //fazendo casting de um objeto generico
        system.debug('Account = ' + acc);
    }
    
	/*List uma coleção ordenada de elementos

	cada elemento da lista tem índice para identificação

	A lista pode ser aninhada e até multidimensional

    Os elementos podem ser de qualquer tipo de dados:
    -Primitivos, coleções, sObject*/    
    
    public void metodoList(){
        List<String> strString = new List<String>();
        strString.add('A');
        strString.add('B');        
        system.debug('adicionando elementos na list: ' + strString);
        /////////////////////

		
        List<Integer> myList = new List<Integer>();
        	myList.add(20);
        	integer i = myList.get(0);
        	integer s = myList.size();
        	Boolean b = myList.isEmpty();
        	system.debug('A lista está vazia? ' + b);
                        
        
        List<Account> accList = [SELECT Id, Name FROM Account LIMIT 3];
        system.debug('Lista do objeto conta : ' + accList);
    }
    /*um mapa é uma coleção de pares chave-valor

    as chaves são sempre únicas tendo um valor associado
    
    o apex usa uma estrutura de hash para todos os mapas
    
    adicionar uma entrada de mapa com uma chave existente substitui a entrada com nova*/

	public void colecaoMap(){
        
        Map<Integer, String> intToStrMap = new Map<Integer, String>();
        intToStrMap.put(1,'Primeiro');
        intToStrMap.put(2,'Segundo');
        
        Boolean b = intToStrMap.containsKey(1);
        String value = intToStrMap.get(2);
        system.debug('contains key ' + b);
        system.debug('get ' + value);
        
        
        
        
        
        
        
    }
}