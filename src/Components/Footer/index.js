import './Footer.css';
import formas_de_pagamento from '../../imagens/formas_de_pagamento.jpeg';


const Footer = () => {
        return (
            <footer>
                <p className="formas_pagamento">Formas de Pagamento</p>
                <img width='350px' src={formas_de_pagamento}  alt="Formas de Pagamento" />
                <p className="Recode">&copy;Copyright Edson Oliveira 2021</p>
            </footer>
        );
    }
    
    export default Footer;
