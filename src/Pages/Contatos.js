
import './Contatos.css';
import email from '../imagens/email.png';
import whats from '../imagens/whats.png';
export default function Contatos() {
    return (
       
            <>
                    <header>
                        <h2> Fale Conosco </h2>
                        <hr/>
                    </header>

                        <section className="completo-contatos">

                            <div className="contatos">

                                <img width='80px' src={email} alt="email" className="img"></img>
                                <p>contato@fullstackeletro.com</p>  

                            </div>
                            
                            <div className="contatos">

                                <img width='45px'src={whats} className="img"></img>
                                <p>(11) 99999-9999 </p>   

                            </div>
                   </section>  
                   <div>       
                  
                <form  method ="POST" action="" >
                        <div class="form-group">
                            <label for="exampleFormControlInput1">Nome</label>
                            <input type="text" name="nome" className="form-control" id="exampleFormControlInput1"  placeholder="Seu nome..." />
                        </div>
                        
                        <div class="form-group">
                            <label for="exampleFormControlTextarea1">Mensagem</label>
                            <textarea className="form-control" name="mensagem" id="exampleFormControlTextarea1" rows="3"placeholder="Sua mensagem..."></textarea>
                        </div>
                        <input id="botao" class="btn text-white my-4 item-align-center" type="submit"  value="Enviar" />
                        
                 </form>

                 </div>    
       
       </>
       

     


    );
}

 