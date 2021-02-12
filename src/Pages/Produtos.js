
import Categorias from '../Components/Categorias';
import CardsProdutos from '../Components/CardsProdutos';


function Produtos() {
    return (
        <div className='container-fluid'>
              
              <h2>Produtos</h2>
              <hr />
              <div className='row'>
                    <div className='col-3'>
                        <Categorias />
                    </div>
                    <div className='col-9'>
                        <CardsProdutos />
                    </div>
              </div>
          
        </div>
    )
}

export default Produtos;