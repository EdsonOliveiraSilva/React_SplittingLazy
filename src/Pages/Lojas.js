import './Lojas.css';


function Lojas(){
    return(
        <div>
            <header>
                    <h2>Nossas Lojas</h2>
                    <hr/>
            </header> 
        
                
            <section className="row">
            <div className="col-lg-4 d-flex justify-content-center">
              <div
                className="card text-black bg-light m-3"
                style={{ minWidth: "15rem" }}>
                <div className="card-header font-weight-bold">Rio de Janeiro </div>
                <div className="card-body">
                  <p className="card-text">Avenida 64bits, 64</p>
                  <p className="card-text">10° Andar</p>
                  <p className="card-text">Centro</p>
                  <p className="card-text">(21) 3333-3333</p>
                </div>
              </div>
            </div>

            <div className="col-lg-4 d-flex justify-content-center">
              <div
                className="card text-black bg-light m-3"
                style={{ minWidth: "15rem" }}>
                <div className="card-header font-weight-bold">São Paulo</div>
                <div className="card-body">
                  <p className="card-text">Avenida 32bits, 32</p>
                  <p className="card-text">3° Andar</p>
                  <p className="card-text">Jardins</p>
                  <p className="card-text">(11) 4444-4444</p>
                </div>
              </div>
            </div>

            <div className="col-lg-4 d-flex justify-content-center">
              <div
                className="card text-black bg-light m-3"
                style={{ minWidth: "15rem" }}>
                <div className="card-header font-weight-bold">Minas Gerais</div>
                <div className="card-body">
                  <p className="card-text">Avenida 128bits, 128</p>
                  <p className="card-text">Belo Horizonte - MG</p>
                  <p className="card-text">(47) 5555-5555</p>
                </div>
              </div>
            </div>
          </section>

          
           
        
        </div>
    );
};
export default Lojas;