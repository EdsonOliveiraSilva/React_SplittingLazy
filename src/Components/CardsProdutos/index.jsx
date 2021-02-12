import { useState, useEffect } from 'react';

import './styles.css';

export default function CardProdutos  ()  {
  const [produtos, setProdutos] = useState([]);

  useEffect(() => {
    async function getApi() {
      const url = 'http://localhost/projetos/fullstackeletro/backend/';

      const response = await fetch(url);

      const data = await response.json();

      setProdutos(data);
    }

    getApi();
  }, []);

  function increaseImage(element) {
    const image = element;

    image.style = 'width: 300px';
  }

  function decreaseImage(element) {
    const image = element;

    image.style = 'width: 120px';
  }

  return (
    <>
      <div className='row'>
        {produtos.map((produtos) => {
          return (
            <div
              className='box-produto justify-content-center d-flex-column  col-3 align-items-center'
              id={produtos.categoria}
              key={produtos.idproduto}
            >
              <img
                src={
                  'http://localhost/projetos/fullstackeletro/src/' +
                  produtos.imagem
                }
                onMouseOver={(event) => increaseImage(event.target)}
                onMouseOut={(event) => decreaseImage(event.target)}
                alt={produtos.descricao}
              />
              <div>
                <p className='descricao'>{produtos.descricao}</p>
                <hr />
                <p className='descricao'>
                  <strike>R$ {produtos.preco}</strike>
                </p>
                <p className='preco_final'>R$ {produtos.precofinal}</p>
              </div>
            </div>
          );
        })}
      </div>
    </>
  );
};

