import React, { Component } from 'react';

class Header extends Component {
  render() {
    return (
      <div className="header">
        <nav>
          <ul>
            <li><a href="/">Accueil</a></li>
            <li><a href="/articles">Articles</a></li>
            <li><a href="#Courses">Courses spéléo</a></li>
            <li><a href="#Apropos">À propos</a></li>
            <li><a href="#Contact">Contact</a></li>
            <li><a href="/admin">Administration</a></li>
          </ul>
        </nav>
      </div>
    );
  }
}

export default Header;
