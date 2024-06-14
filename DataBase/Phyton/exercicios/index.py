#Importação das bibliotecas
import os
import produtos;

#Declaração das variáveis
inputMenu= int(-1)


#Repetição para criação do menu
while(inputMenu!=0):
   
    print('Digite 1 para a inserção de um produto');
    print('Digite 2 para visualizar todos os produtos');
    print('Digite 3 para procurar um produto');
    print('digite 4 para atualizar um produto');
    print('Digite 5 para excluir um produto');
    print('Digite 0 para encerrar')

    inputMenu=int(input("\nDigite um valor do menu "))
    
    if (inputMenu ==1 ):
       try:
           name=str('');
           price=int(0);
           quantity=int(0);
           print(f'\n Digite os dados solicitados para criação do produto.');
           name=str(input('Nome: '));
           price=float(input('Preço: '));
           quantity=int(input('Quantidade: ')); 
            
           produtos.create(name,price,quantity);
       except:
           print('Something went wrong')
        

    if(inputMenu == 2):
        data=[];
        data=produtos.select();

        #Exibir dados corretamente
        if(data['code']==200):

            for product in data['data']:
                print(f'\nNome: {product[0]}, Preço: {product[1]}, Quantidade:  {product[2]} un')

        else: 
        #Erro de banco de dados
            if(data['code']==500):
                print(f'\n{data['data']}')
            else:
                print(f'\nUnknown Error');
    
    #Find
    if (inputMenu == 3):
        data=[];
        name=str('');
        try:
            print('\nProcurar produto específico.');
            name=input('Nome do Produto: ');
            
            data=produtos.findByName(name);

            #Exibir dados corretamente
            if(data['code']==200):
                print(f'\nNome: {data['data'][0]}, Preço: {data['data'][1]}, Quantidade: {data['data'][2]} un')          
                
            else:    
                #Produto não encontrado ou erro de banco de dados
                if (data['code']==404 or data['code']==500):
                    print(f'\n{data['message']}');
                else:
                    #Erro não previsto    
                    print(f'\nUnknown Error');
        except:
            print('Somenthing went wrong')     

    input ('\nDigite enter para continuar..');
    os.system('cls')
