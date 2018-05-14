import React, { Component } from 'react';
import Header from 'components/header';
import Footer from 'components/footer';

class App extends Component {
  render() {
    return (
      <div className="app">
      	<Header />
        <h1>My first app as a container</h1>
        <h2>[nom de la boite], l'aventure sous terre !</h2>
        <section>
					<h1>Bienvenu sur le site</h1>
					<p>Un paragraphe</p>
				</section>
				<Footer />
      </div>
    );
  }
}

export default App;
