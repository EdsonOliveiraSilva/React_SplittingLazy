import './index.css';
import compra from '../imagens/compra.png';

export default function Home() {

    return (
       
        <div id="inicial">  

               <h1>Seja Bem Vindo(a) !</h1>
               <hr/>
               <img src={compra} />
               <p>Aqui em nossa loja, programadores tem desconto em produtos para sua casa!</p>
               
        </div>      
       
    )
}
