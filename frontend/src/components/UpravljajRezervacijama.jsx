import React from 'react';
import Dugme from './Dugme.jsx';
import axios from 'axios';
import { useState, useEffect } from 'react';
import moment from 'moment';


//useEffect -> osluskuje promene i izvrsava funkciju u zavisnosti da li su se promenljive unutar komponente promenile ili ne.

function UpravljajRezervacijama() {
	const [ rezervacije, setRezervacije ] = useState();
	

	useEffect(() => {
		if(rezervacije == null){
			axios.get('https://localhost:44336/api/Rezervacija').then((res) => {
				console.log(res.data); // res.data.kakoSeZoveNizKojiKupiPodatkeIzBaze
				setRezervacije(res.data)
			});
		}
	},[])

	console.log(rezervacije);

	return (
		

		<div className="rezervacije">
			<input
			
				className="pretraga"
				type="text"
				id="myInput"
				onKeyUp={window['funkcijaZaPretragu']}
				placeholder="🔍 Pretraži rezervacije ..."
			/>
			<div>
				<table className="tabela" id="myTable">
					<tbody>
					<tr>
							<th>Grad</th>
							<th>Korisnik</th>
							<th>Broj osoba</th>
							<th>Datum polaska</th>
							<th>Datum povratka</th>
							<th>Dorucak</th>
							<th>Vecera</th>
						</tr>
						{ rezervacije == null ? <></> : rezervacije.map((rezervacija) => (
							<tr key = {rezervacija.rezervacijaId}>
								<td>{rezervacija.grad.nazivGrada}</td>
								<td>{rezervacija.korisnik.ime} {rezervacija.korisnik.prezime}</td>
								<td>{rezervacija.brojOsoba}</td>
								<td>{moment(rezervacija.grad.datumPolaska).format('DD/MM/YYYY HH:mm')}</td>
								<td>{moment(rezervacija.grad.datumPovratka).format('DD/MM/YYYY HH:mm')}</td>
								<td>{rezervacija.dorucakUHotelu==true? "DA": "NE"}</td>
								<td>{rezervacija.veceraUVinariji==true? "DA": "NE"}</td>

							</tr>
						))}
						
						
						
						
					</tbody>
				</table>
			</div>
			<div className="dugmeKomponenta">
				<Dugme tekst={"Sortiraj"} />
			</div>
		</div>
	);
}


export default UpravljajRezervacijama;
