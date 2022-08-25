import React from 'react';
import { Link } from 'react-router-dom';
import { FaPaperPlane } from 'react-icons/fa';
import { BsSearch } from 'react-icons/bs';
import axios from "axios";
import logo from "../img/Logo.jpg";
import jwt_decode from "jwt-decode";

function NavigationBar({ nav }) {
	let decodedToken = "";


	function handleLogout() {
		<Link to="/">Prijavi se</Link>
		window.sessionStorage.removeItem("auth_token");

	}


	if (sessionStorage.hasOwnProperty("auth_token")) {
		decodedToken = jwt_decode(window.sessionStorage?.getItem("auth_token"));
	}


	return (
		<div className={nav === 1 ? 'navigationBar' : 'bottomBar'}>
			{nav === 1 ?
				(<div className="logoNavBar">
					{/* <FaPaperPlane /> */}
					<img src={logo} alt="" />
				</div>) : (<></>)}
			{/* <div className="logo">
				<MdTravelExplore />
			</div> */}
			<Link to="/turistickeDestinacije" className="stavka">
				Turističke destinacije
			</Link>

			{/* <Link to="/pregledRezervacija" className="stavka">
				Vaše rezervacije
			</Link> */}
			{decodedToken.role == "Admin" ?
				<Link to="/upravljajRezervacijama" className="stavka">
					Upravljaj rezervacijama
			</Link> :<> </>
			}


			{decodedToken.role == "Admin" ?
				<Link to="/upravljajDestinacijama" className="stavka">
					Upravljaj destinacijama
			</Link> : <></>}

			<Link to="/kontakt" className="stavka" onClick={window['initMap']} >
				Kontakt
			</Link>
			{window.sessionStorage.getItem("auth_token") === '' ? '' : (<Link to="/" className="stavka" onClick={handleLogout}>Odjavi se</Link>)}



		</div>
	);
}

export default NavigationBar;
