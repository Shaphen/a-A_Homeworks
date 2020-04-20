import React from 'react';
import GiphysIndex from './giphys_index';

class GiphysSearch extends React.Component {
  constructor() {
    super();
    this.state = {
      searchTerm: "maltipoo"
    };
    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleChange(event) {
    this.setState({
      searchTerm: event.currentTarget.value,
    });
  }

  handleSubmit(event) {
    event.preventDefault();
    let searchTerm = this.state.searchTerm.split(' ').join('+');
    this.props.fetchSearchGiphys(searchTerm);
  }
  
  render() {
    let { giphys } = this.props
    return (
      <div>
        <h1>Giphys Search Page!</h1>
        <form method="get" className="form">
          <input type="text" onChange={ this.handleChange } value={ this.state.searchTerm } />
          <button type="submit" onClick={ this.handleSubmit }>Search Giphy!</button>
        </form>
        <GiphysIndex giphys={giphys} />
      </div>
    )
  }
}

export default GiphysSearch;