
const fetchSearchGiphys = (searchTerm) => {
  return $.ajax({
    method: 'GET',
    url: `http://api.giphy.com/v1/gifs/search?q=${searchTerm}&api_key=${6B8ZDk7vbiC15UoS7itXg68hBsM0Q7yv}&limit=2`
  });
}
