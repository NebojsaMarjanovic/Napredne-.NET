import React from 'react';
import Gradovi from '../components/Gradovi';

function PretragaPoVinu() {
      const [query, setQuery] = useState("");
      return (
        <div className="app">
          <input
            className="pretraga"
            type="text"
            id="myInput"
            placeholder="🔍 Pretraži rezervacije ..."
            onChange={(e) => setQuery(e.target.value.toLowerCase())}
          />
          <ul className="list">
            {Gradovi.filter((grad)=>grad.vinarija.naziv.toLowerCase().includes(query)).map((grad) => (
              <li className="listItem" key={grad.id}>
                {grad.naziv}
              </li>
            ))}
          </ul>
        </div>
      );
    }

