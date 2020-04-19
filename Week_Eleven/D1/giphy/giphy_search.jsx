// test code import delete below when done
import { fetchSearchGiphys } from './util/api_util';
// end test code imports delete above when done

import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';

document.addEventListener('DOMContentLoaded', () => {
  //test code to delete later below
  window.fetchSearchGiphys = fetchSearchGiphys;
  //end test code remember to delete above
  
  const root = document.getElementById('root');
  ReactDOM.render(<h1>This is the Giphys Page!</h1>, root)
});
