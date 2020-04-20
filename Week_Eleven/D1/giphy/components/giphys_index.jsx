import React from 'react';
import GiphysIndexItem from './giphys_index_item';

function GiphysIndex({ giphys }) {
  return (
    <ul className="list">
      { giphys.map(giphy => <GiphysIndexItem key={giphy.id} giphy={giphy} />) }
    </ul>
  );
}

export default GiphysIndex;