import React, { Component } from 'react';

class Header extends Component {
  render() {
    return (
      <div className="header">
        <nav>
          <ul>
            <li><a href="#Accueil">Accueil</a></li>
            <li><a href="#Apropos">À propos</a></li>
            <li><a href="#Courses">Courses spéléo</a></li>
            <li><a href="#Contact">Contact</a></li>
            <li><a href="#Connexion">Connexion</a></li>
          </ul>
        </nav>
      </div>
    );
  }
}

export default Header;
