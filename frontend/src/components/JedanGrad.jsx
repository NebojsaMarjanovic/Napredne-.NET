import React, { useEffect } from 'react';

import { IoIosWine } from 'react-icons/io';

import { FiMoreHorizontal } from 'react-icons/fi';
import { VscChromeClose } from 'react-icons/vsc';
import { useState } from 'react';
import axios from 'axios';
import Cookies from 'universal-cookie';
import { useNavigate } from 'react-router-dom';
import moment from 'moment';

function JedanGrad({ grad }) {
	const [opisGrada, setOpisGrada] = useState('');
	const [i, seti] = useState(0);
	const cookies = new Cookies();
	const [podaciGrada, setPodaciGrada] = useState({
		korisnikId: '',
		gradId: '',
	});



	let navigate = useNavigate();




	function prikaziOpis() {
		if (i % 2 == 0) {
			setOpisGrada(grad.opis);
		} else {
			setOpisGrada('');
		}
		seti(i + 1);
		console.log(i);
		console.log(grad);

	}

	const routeChange = () => {
		let path = `/pregledRezervacija`;
		navigate(path, { state: { rezervacija: grad } });
	};

	function rezervisi(grad) {
		// upisiUCookie();
		cookies.set('rezervisaniGradovi', grad);
		routeChange();
	}



	// function rezervisiGrad(grad){

	// 	if(cookies.get(grad.gradId)!=null){
	// 	setPodaciGrada(podaciGrada.korisnikId=window.sessionStorage.getItem('id'),
	// 	podaciGrada.gradId=grad.gradId)

	// 	const rezervisani=cookies.get("rezervisani");

	// 	cookies.set(grad.gradId, grad);
	// 	console.log(cookies.getAll());

	// 	}
	// 	else{
	// 		window.alert("Grad je vec rezervisan!");
	// 	}


	// 	// axios
	// 	// 	.post('https://localhost:44321/api/Rezervacije', podaciGrada)
	// 	// 	.then((res) => {
	// 	// 		console.log(res.data);
	// 	// 	})
	// 	// 	// .catch((e) => window.alert('Neuspesna registracija, proverite da li uneti kredencijali zadovoljavaju data ogranicenja'));
	// 	}


	return (
		<div className="jedanGrad">
			<p className="jedanGradNaziv"><b>{grad?.nazivGrada}</b></p>
			<p className="jedanGradNaslov"><i>{grad?.programPutovanja?.split('|')[0]}</i></p>
			<div className="jedanGradSadrzaj">
				<div className="jedanGradLevo">
					<div className="jedanGradTekst">

						<div className="jedanGradNaslovCena">


						</div>



						<img className="slika" src={grad?.slika} />
					</div>
				</div>
				<div className="jedanGradDesno">
					<p className="jedanGradDrzava"><i><b>Polazak: </b>{moment(grad?.datumPolaska).format('DD/MM/YYYY HH:mm')}</i></p>
					<p className="jedanGradDrzava"><i><b>Povratak: </b>{moment(grad?.datumPovratka).format('DD/MM/YYYY HH:mm')}</i></p>
					<p className="jedanGradDrzava"><i><b>Hotel: </b>{grad.hotel.naziv}</i></p>
					<p className="jedanGradDrzava"><i><b>Vinarija: </b>{grad.vinarija.naziv}</i></p>
					<p className="jedanGradVina"><i><b>Vina: </b>{grad?.vinarija?.vina?.map(vino => vino.naziv).join(", ")}</i></p>
					<p className="jedanGradDrzava"><i><b>Broj slobodnih mesta: </b>{grad?.brojSlobodnihMesta}</i></p>
					<p className="jedanGradCena"> <b>Cena po osobi: {grad?.cenaPoOsobi}€</b></p>
				</div>
			</div>
			<div className="jedanGradButtons">
				<div className="opisGrada">{opisGrada}</div>

				<button className="btn3" onClick={() => rezervisi(grad)}>
					<IoIosWine />
				</button>


				<button className="btn2" onClick={prikaziOpis}>
					<FiMoreHorizontal />
				</button>
			</div>
		</div>

	);
}

export default JedanGrad;
