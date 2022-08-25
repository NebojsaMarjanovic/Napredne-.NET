import React from 'react';

function Dugme({tekst}) {
	return (
		<div className="dugmeKomponenta">
			<button className="dugmeSortiranje" onClick={window['sortirajOpadajuce']}>
				{tekst}
			</button>
		</div>
	);
}

export default Dugme;
