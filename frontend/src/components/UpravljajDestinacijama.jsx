import React from 'react';
import { useState, useEffect } from 'react';
import FloatingLabel from 'react-bootstrap-floating-label';
import Form from 'react-bootstrap-floating-label'
import axios from "axios";
import moment from 'moment';


function UpravljajDestinacijama() {

	const [destinacije, setDestinacije] = useState([]);
	const [show, setShow] = useState(false)
	const [upGradId, setUpGradId] = useState();
	const [flagUpdate, setFlagUpdate]=useState(false);

	const[updateDestinacija,setUpdateDestinacija] = useState({
		id:'',
		naziv:'',
		brSlobodnihMesta:'',
		cenaPoOsobi:'',
		datumPolaska:'',
		datumPovratka:''
	});


	async function fetchData() {
		let res = await axios.get('https://localhost:44336/Grad/GetGradovi');
		setDestinacije(res.data);
		console.log(res.data);

	}


	useEffect(() => {
		fetchData();
		console.log("Ucitani podaci!");
	}, []);


	const deleteGrad = (id) => {
		axios.delete('https://localhost:44321/Grad/' + id);
		setDestinacije(
			destinacije.filter((destinacija) => {
				return destinacija.id !== id;
			})
		);
	};

	function handleInput(e) {
		
		let noviPodaciDestinacije = updateDestinacija;
		noviPodaciDestinacije[e.target.name] = e.target.value;
		setUpdateDestinacija(noviPodaciDestinacije);
	}



	async function updateGrad (event, id){

		await axios.put('https://localhost:44336/Grad/UpdateGrad/' + id, updateDestinacija);

		window.alert("Grad "+updateDestinacija['naziv']+ " je uspesno azuriran!");
		window.location.reload();
	};

	const showForm = (destinacija) => {
		setShow(true);
		console.log(destinacija);
		updateDestinacija['id']=destinacija.gradId;
		updateDestinacija['naziv'] = destinacija.nazivGrada;
		updateDestinacija['cenaPoOsobi'] = destinacija.cenaPoOsobi;
		updateDestinacija['brSlobodnihMesta']= destinacija.brojSlobodnihMesta;
		updateDestinacija['datumPolaska']=moment(destinacija.datumPolaska).format('DD/MM/YYYY HH:mm')
		updateDestinacija['datumPovratka']=moment(destinacija.datumPovratka).format('DD/MM/YYYY HH:mm')

		// setUpdateDestinacija(destinacija.gradId,destinacija.nazivGrada,destinacija.brojSlobodnihMesta,destinacija.cenaPoOsobi,
		// 	moment(destinacija.datumPolaska).format('DD/MM/YYYY HH:mm'),moment(destinacija.datumPovratka).format('DD/MM/YYYY HH:mm'));
			console.log(updateDestinacija);
		
		window.scrollTo({
			top: document.body.scrollHeight,
			left: 0,
			behavior: 'smooth'
		});
	}



	return (


		<>
			<div className="upravljajDestinacijama">
				<div className="tabelaUpravljanjeDestinacijama">
					<table className="tabelaDestinacije">
						<tbody>
							<tr>
								<th>Grad</th>
								<th>Datum polaska</th>
								<th>Datum povratka</th>
								<th>Broj slobodnih mesta</th>
								<th>Hotel</th>
								<th>Vinarija</th>
								<th>Cena</th>
								<th>Admin akcija</th>
							</tr>



							{/* { destinacije.map((destinacija) => ( */}
							{destinacije == null ? <></> : destinacije.map((destinacija) => (
								<tr key={destinacija.gradId}>
									<td>{destinacija.nazivGrada}</td>
									<td>{moment(destinacija.datumPolaska).format('DD/MM/YYYY HH:mm')}</td>
									<td>{moment(destinacija.datumPovratka).format('DD/MM/YYYY HH:mm')}</td>
									<td>{destinacija.brojSlobodnihMesta}</td>
									<td>{destinacija.hotel?.naziv}</td>
									<td>{destinacija.vinarija?.naziv}</td>
									<td>{destinacija.cenaPoOsobi}</td>
									<td>
										<div className="adminActions">
											<button className="dugmeObrisi" onClick={() => deleteGrad(destinacija.gradId)}>Obriši</button>
											<button className="dugmeIzmeni" onClick={()=>showForm(destinacija)}>Ažuriraj</button>
										</div>
									</td>
								</tr>
							))}

						</tbody>
					</table>
				</div>


				{show ? <div className='formaZaUpravljanjeDestinacijama'>
					<form className="forma">
						<h2 className="prijavaforma" htmlFor="forma">
							Izmeni grad
				</h2>
						<div className="form-group">
							<label for="formGroupExampleInput">Naziv:</label>
							<input type="text" className="form-control" id="formGroupExampleInput1" value={updateDestinacija['naziv']} />
						</div>
						<div className="form-group">
							<label for="formGroupExampleInput2">Broj slobodnih mesta:</label>
							<input type="text" className="form-control" id="formGroupExampleInput2" name="brSlobodnihMesta"
								placeholder={updateDestinacija['brSlobodnihMesta']}
								onInput={handleInput}
							/>
						</div>
						<div className="form-group">
							<label for="formGroupExampleInput">Cena po osobi:</label>
							<input type="text" className="form-control" id="formGroupExampleInput1" name="cenaPoOsobi"
								placeholder={updateDestinacija['cenaPoOsobi']}
								onInput={handleInput}
							/>
						</div>
						<div className="form-group">
							<label for="formGroupExampleInput">Datum polaska:</label>
							<input type="text" className="form-control" id="formGroupExampleInput1" name = "datumPolaska" 
							placeholder={updateDestinacija['datumPolaska']} 
							onInput={handleInput}
							/>
						</div>
						<div className="form-group">
							<label for="formGroupExampleInput">Datum povratka:</label>
							<input type="text" className="form-control" id="formGroupExampleInput1" name ="datumPovratka" 
							placeholder={updateDestinacija['datumPovratka']}
							onInput={handleInput}
							/>
						</div>
						<div className="btnForma">
							<button type="button" className="dugmeIzmeni"onClick={()=>updateGrad(updateDestinacija['id'])}>Ažuriraj</button>

						</div>
					</form>

				</div> : null}


			</div>




		</>
	);
}

export default UpravljajDestinacijama;
