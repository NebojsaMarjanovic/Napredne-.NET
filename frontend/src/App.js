import logo from './logo.svg';
import './App.css';
import Gradovi from "./components/Gradovi";
import FormaPrijava from "./components/FormaPrijava";
import FormaRegistracija from "./components/FormaRegistracija";
import NavigationBar from "./components/NavigationBar";
import React from 'react';

import { BrowserRouter, Routes, Route, withRoute } from "react-router-dom";
import { useState, useEffect, useReducer } from "react";
import Rezervacije from './components/Rezervacije';
import FormaPromenaLozinke from './components/FormaPromenaLozinke';
import Kontakt from './components/Kontakt';
import UpravljajRezervacijama from './components/UpravljajRezervacijama';
import UpravljajDestinacijama from './components/UpravljajDestinacijama';
import axios from 'axios';
import jwt_decode from "jwt-decode";



function App() {


  let decodedToken = "";

  if (sessionStorage.hasOwnProperty("auth_token")) {
    decodedToken = jwt_decode(window.sessionStorage?.getItem("auth_token"));
  }
  console.log(decodedToken);

  const [gradoviBaza, setGradoviBaza] = useState([]);



    useEffect(() => {
      const fetchData = async () => {
        let res = await axios.get('https://localhost:44336/Grad/GetGradovi');
        setGradoviBaza(res.data);
      }
      fetchData();
    },[]);




  return (

    <BrowserRouter className="App">

      <div className="Appdiv">
        <Routes>
          <Route
            path="/"
            element={
              <FormaPrijava />
            }
          />


          <Route
            path="/turistickeDestinacije"
            element={

              <>
                <NavigationBar nav={1}></NavigationBar>


                <div className="jumbotron">

                  <h1 className="jumbotronNaslov"><b><i>S čašom kroz Srbiju!</i></b></h1>
                  <p className="lead">Putevima vina upoznajte gradove i vinske regione naše zemlje. <br />Rezervišite svoje putovanje sa najboljom ekipom i pouzdanim vodičima.</p>

                </div>
                <h1 className="naslov">Koji je vaš grad?</h1>

                <Gradovi gradovi={gradoviBaza} />
              </>
            }
          />
          <Route
            path="/pregledRezervacija"
            element={
              <>
                <NavigationBar nav={1}></NavigationBar>

                <Rezervacije token={decodedToken} />
              </>
            }
          />
          <Route
            path="/upravljajRezervacijama"
            element={
                <>
                  <NavigationBar nav={1}></NavigationBar>
                  <UpravljajRezervacijama token={decodedToken} />
                </>
            }
          />

          <Route

            path="/kontakt"
            element={
              <>
                <NavigationBar nav={1}></NavigationBar>
                <Kontakt />
              </>

            }
          />

          <Route
            path="/upravljajDestinacijama"
            element={
                <>
                  <NavigationBar nav={1}></NavigationBar>
                  <UpravljajDestinacijama />
                </>
            }
          />

          <Route
            path="/prijava/"
            element={
              <FormaPrijava />
            }
          />
          <Route
            path="/registracija/"
            element={
              <FormaRegistracija />
            }
          />
        </Routes>

      </div>
    </BrowserRouter>
  );



}

export default App;
