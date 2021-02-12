import {BrowserRouter} from 'react-router-dom';
import {Container} from 'react-bootstrap';
import {lazy, Suspense} from 'react';
import './App.css';
import carrega from './imagens/carrega.gif';

const Rotas = lazy(()=> import('./rotas'));
const Menu = lazy(()=> import('./Components/Menu'));
const Footer = lazy(()=> import('./Components/Footer'));

function App() {
  return (
    <BrowserRouter>
        <div className="App">
          <header>
            <Suspense fallback={<h1>Carregando...</h1>}>
            <Menu/>
            </Suspense>
          </header>
          <main>
            <Suspense fallback={<img src={carrega}/>}>
            <Container fluid>
              <Rotas/>
            </Container>
            </Suspense>
          </main>
          <footer>
          <Suspense fallback={<h2>Carregando.... Só um minuto</h2>}>
            <Footer/>
          </Suspense>
          </footer>
          
        </div>
    </BrowserRouter>
    
  );
}

export default App;
