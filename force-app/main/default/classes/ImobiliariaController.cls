public class ImobiliariaController {
    // definições das variaveis
    
    public integer quartos {get;set;}
    public integer banheiros {get;set;}
    public integer sala {get;set;}
    public integer cozinha {get;set;}
    public integer copa {get;set;}
    public integer suite {get;set;}
    public integer vagas {get;set;}
    public integer valor {get;set;}
    public String tipoImovel {get;set;}
    
    //Metodo picklist
    public List<SelectOption> getMinhasOpcoes(){
        //mapear o campo de lista de seleção, que desejo listar
        Schema.DescribeFieldResult describeResult = Imoveis__c.TipoImovel__c.getDescribe();
        
        //Listar as opções validas dentro do campo
        List<Schema.PicklistEntry> entries = describeResult.getPickListValues();
        
        //Cria variavel de retorno do tipo lista para o objeto SelectionOption
        List<SelectOption> optionsToReturn = new List<SelectOption>();
        
        //Adiciona as opcoes do campo listadas
        for(Schema.PicklistEntry pEntry : entries)
        {
            //se a opcao esta ativa
            //aqui aplicar o filtro q quiser
            if(pEntry.isActive())
            {
                optionsToReturn.add(new SelectOption(pEntry.getValue(), pEntry.getLabel()));
            }
        }
        //retorna a lista, variavel de retorno
        return optionsToReturn;
    }
    
    
    
    //metodo salvar
    public void salvarImoveis()
    {
        Imoveis__c objImoveis = new Imoveis__c(); // objeto do tipo imoveis instanciado
        objImoveis.Quartos__c = quartos;
        objImoveis.Banheiro__c = banheiros;
        objImoveis.Sala__c = sala;
        objImoveis.Cozinha__c = cozinha;
        objImoveis.Copa__c = copa;
        objImoveis.Suite__c = suite;
        objImoveis.Garagem__c = vagas;
        objImoveis.Valor__c  =valor;
        objImoveis.TipoImovel__c = tipoImovel;
        
        
        
        try{
            
            if(objImoveis.TipoImovel__c != 'Nenhum' && objImoveis.TipoImovel__c != null )
            {
                ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.CONFIRM, 'Imóvel cadastrado com sucesso!'));
                insert objImoveis;
                //refresh na tela
                quartos = null;
                banheiros = null;
                sala = null;
                cozinha = null;
                copa = null;
                suite = null;
                vagas = null;
                valor = null;
                tipoImovel = null;
                
            }else
            {
                ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR, 'O campo tipo do imóvel deverá ser preenchido!'));
            }
            
        }catch(DmlException e){
            ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR, 'Por favor verifique todos os campos antes de salvar!'));
            
            
        }
        
        
        
        
        
        
        
    }
    
    
}