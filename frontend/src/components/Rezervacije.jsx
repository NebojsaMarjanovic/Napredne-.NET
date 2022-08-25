import React from 'react';
import axios from 'axios';
import { useState, useEffect } from 'react';
import { useLocation } from "react-router-dom";
import { saveAs } from 'file-saver';


function Rezervacije({ token }) {

	const pathname = useLocation();
	const [aranzman, setAranzman] = useState(pathname.state.rezervacija);
	const dropDownOptions = [
		{ label: '1', value: '1' },
		{ label: '2', value: '2' },
		{ label: '3', value: '3' },
		{ label: '4', value: '4' },
		{ label: '5', value: '5' },
	];

	const [brojOsoba, setBrojOsoba] = React.useState('1');
	const [checkedDorucak, setCheckedDorucak] = React.useState(false);
	const [checkedVecera, setCheckedVecera] = React.useState(false);

	const [pocetnaCena, setPocetnaCena] = React.useState();
	const [cena, setCena] = React.useState();
	const [programPutovanja, setProgramPutovanja] = useState('');
	const [naslovRezervacije, setNaslovRezervacije] = useState('');
	const [napomena, setNapomena] = useState('');

	var FileSaver = require('file-saver');



	useEffect(() => {
		setCena(aranzman.cenaPoOsobi);
		setPocetnaCena(aranzman.cenaPoOsobi);
		setProgramPutovanja(aranzman.programPutovanja?.split('|'));
		setNaslovRezervacije(aranzman.programPutovanja.substring(0,'|'));
	}, []);
	console.log(aranzman.programPutovanja?.split('|'));

	useEffect(() => {
		window.scrollTo(0, 0);
	}, [pathname]);


	/*useEffect(() => {
		setNaslovRezervacije(programPutovanja[0]);
	}, [])*/


	const handleChangeDropdown = (event) => {
		setBrojOsoba(event.target.value);
		if (checkedDorucak && checkedVecera)
			setCena((pocetnaCena + 10 + 20) * event.target.value);
		else if (checkedDorucak)
			setCena((pocetnaCena + 10) * event.target.value);
		else if (checkedVecera)
			setCena((pocetnaCena + 20) * event.target.value);
		else
			setCena(pocetnaCena * event.target.value);
	};


	const handleChangeCheckBoxDorucak = (event) => {

		setCheckedDorucak(!checkedDorucak);
		if (!checkedDorucak)
			setCena(parseInt(cena) + parseInt(event.target.value) * parseInt(brojOsoba));
		else
			setCena(parseInt(cena) - parseInt(event.target.value) * parseInt(brojOsoba));
	};

	const handleChangeCheckBoxVecera = (event) => {
		setCheckedVecera(!checkedVecera);
		if (!checkedVecera)
			setCena(parseInt(cena) + parseInt(event.target.value) * parseInt(brojOsoba));
		else
			setCena(parseInt(cena) - parseInt(event.target.value) * parseInt(brojOsoba));
	};

	const handleNapomenaChange = event => {
		setNapomena(event.target.value);
	};

	console.log(napomena);


	function rezervisi() {
		axios
			.post('https://localhost:44336/api/Rezervacija', {
				gradId: aranzman.gradId,
				korisnikId: token.userId,
				brojOsoba: brojOsoba,
				dorucakUHotelu: checkedDorucak,
				veceraUVinariji: checkedVecera,
				napomena: napomena,
				ukupnaCena: cena
			})
			.then((response) => {
				console.log(response);
				window.alert("Uspesno ste rezervisali svoj aranzman!");
				saveAs(response.data,"Potvrda rezervacije.pdf");
				window.location = '/turistickeDestinacije';

				// const url = window.URL.createObjectURL(new Blob([response.data]));
				// const link = document.createElement("a");
				// link.href = url;
				// link.setAttribute("download", "file.pdf");
				// document.body.appendChild(link);
				// link.click();

				// routeChange();

			})
			.catch(function (error) {
				if (error.response) {
					// Request made and server responded
					window.alert(error.response.data);
					console.log(error.response.data);
					console.log(error.response.status);
					console.log(error.response.headers);
				} else if (error.request) {
					// The request was made but no response was received
					window.alert(error.request);
					console.log(error.request);
				} else {
					// Something happened in setting up the request that triggered an Error
					console.log('Error', error.message);
				}
			})

	};


	return (

		<div className="rezervacije">

			<div>
				<h1>{aranzman.nazivGrada}</h1>
				<h3><i>"{programPutovanja[0]}"</i></h3>
			</div>

			<div className="prviDrugiDan">
				<h5>1. dan</h5>
				<p className='dan'>
					{programPutovanja == null ? <></> : programPutovanja[1]}
				</p>
				<h5>2. dan</h5>

				<p className='dan'>
					{programPutovanja == null ? <></> : programPutovanja[2]}

				</p>
			</div>

			<div className='hotelVinarijaContainer'>

				<div className='opis'>
					<h5>Hotel {aranzman.hotel.naziv}</h5>
					<p>{aranzman.hotel.opis}</p>
				</div>
				<div className="opis">
					<h5>Vinarija {aranzman.vinarija.naziv}</h5>
					<p>{aranzman.vinarija.opis} Najpoznatija vina koje nudi ova vinarija su: <b><i>{aranzman.vinarija.vina.map(vino => vino.naziv).join(", ")}</i></b> </p>
				</div>

				<div className="inputForme">



					<label htmlFor="">Dorucak u hotelu {aranzman.hotel.naziv} (10€)</label>
					<input type="checkbox" checked={checkedDorucak} onChange={handleChangeCheckBoxDorucak} value='10' name={aranzman.id} />

					<label htmlFor="">Vecera u vinariji {aranzman.vinarija.naziv} (20€)</label>
					<input type="checkbox" checked={checkedVecera} onChange={handleChangeCheckBoxVecera} value='20' name={aranzman.id} />

					<label htmlFor="">Broj osoba:</label>

					<select value={brojOsoba} onChange={handleChangeDropdown} >
						{dropDownOptions.map((option) => (
							<option value={option.value}>{option.label}</option>
						))}
					</select>
				</div>
				<label htmlFor="napomena">Napomena: </label>
				<textarea name="napomena" id="napomena" value={napomena} cols="20" rows="5" onChange={handleNapomenaChange}></textarea>
			</div>




			<b className='ukupnaCena'>Ukupna cena:  {cena}€</b>
			<div className="btnForma1">
				<button className="dugme3" type="submit" onClick={rezervisi}>
					Rezerviši
					</button>
			</div>
		</div>
	);
}

export default Rezervacije;
