import React from 'react';
import JedanGrad from './JedanGrad.jsx';
// import 'bootstrap/dist/css/bootsrtap.min.css';
import { Jumbotron, Container } from 'react-bootstrap';
import { useState } from 'react';

function Gradovi({ gradovi }) {
	const [query, setQuery] = useState("");
	//console.log(gradovi.filter((grad)=>grad.vinarija.vina.filter(vino=>vino.naziv.includes("b"))).map((g) => (g.naziv)))
	return (
		<div><input
			className="pretraga"
			type="text"
			id="myInput"
			placeholder="🔍 Pretraži gradove po svom omiljenom vinu..."
			onChange={(e) => setQuery(e.target.value.toLowerCase())}
		/>
			<div className="gradovi">

				{query == "" ?
					(gradovi.map((g) => <JedanGrad grad={g} key={g.id} />)) :

					(gradovi.filter((grad) => grad.vinarija.vina.map((vino) => vino.naziv).join(" ").toLowerCase().includes(query)).map((g) => (
						<JedanGrad grad={g} key={g.id} />
					)))}
			</div>
		</div>
	);
	// return (

	// <>
	// 	<div className="gradovi">
	// 		{gradovi?.map((g) => <JedanGrad grad={g} key={g.id}  />)}
	// 	</div>
	// 	</>
	// );
}

export default Gradovi;
