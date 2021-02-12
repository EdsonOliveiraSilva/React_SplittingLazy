import {Switch, Route} from 'react-router-dom';
import Produtos from './Pages/Produtos';
import Pedidos from './Pages/Pedidos';
import Contatos from './Pages/Contatos';
import Lojas from './Pages/Lojas';
import index from './Pages/index';

function Rotas () {
    return (
        <Switch>
            <Route exact path="/" component={index}/>
            <Route exact path="/produtos" component={Produtos}/>
            <Route exact path="/pedidos" component={Pedidos}/>
            <Route exact path="/contatos" component={Contatos}/>
            <Route exact path="/lojas" component={Lojas}/>
            
        </Switch>
    )
}

export default Rotas;