import './Pedidos.css';
export default function Pedidos() {

    return (
                                  
                    <>
                    <h2> Pedidos </h2>
                    <hr />
                
                      <form action='pedido-realizado.html' method='POST'>
                        <h2>Informe seus dados:</h2>
                
                        <label for='nome'>Nome:</label>
                        <input type='text' name='nome' id='nome' placeholder='Seu nome...' />
                
                        <label for='endereco'>Endereço:</label>
                        <input type='text' name='endereco' id='endereco' placeholder='Rua A'/>

                        <label for='n_casa'>Nº:</label>
                        <input type='text' name='n_casa' id='n_casa' placeholder='000'/>

                        <label for='telefone'>Telefone:</label>
                        <input type='text' name='telefone' id='telefone' placeholder='0000-0000'/>

                        <label for='email'>Email:</label>
                        <input type='email' name='email' id='email' placeholder='exemplo@email.com'/>
                
                        <h2>Faça o seu Pedido!</h2>
                
                        <label for='produto'>Produto:</label>
                        <input type='text' name='produto' id='produto' placeholder='Informe o nome do produto...'/>

                        <label for='preco'>Preço:</label>
                        <input type='text' name='preco' id='preco' placeholder='0,00'/>

                        <label for='quantidade'>Quantidade:</label>
                        <input type='number' name='quantidade' id='quantidade' placeholder='00'/>

                        <label for='precototal'>Preço Total:</label>
                        <input type='text' name='precototal' id='precototal' placeholder='Rua A'/>
                
                      
                        <input id="botao" class='btn text-white my-4 pr-1'  type='submit' value='Realizar Pedido!' />
                         
                        
                          
                      </form>
                
                     
                    </>
                    
    )
}