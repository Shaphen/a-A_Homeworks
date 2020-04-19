import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';

// test code imports below delete when done
import { fetchSearchGiphys } from './actions/giphy_actions';
import { receiveSearchGiphys } from './actions/giphy_actions';
// end test code imports

document.addEventListener('DOMContentLoaded', () => {
  const store = configureStore();
  const root = document.getElementById('root');
  ReactDOM.render(<Root store={store} />, root)

  //test code below delete later
  window.fetchSearchGiphys = fetchSearchGiphys;
  window.receiveSearchGiphys = receiveSearchGiphys;
  window.store = store;
  //end test code
});
