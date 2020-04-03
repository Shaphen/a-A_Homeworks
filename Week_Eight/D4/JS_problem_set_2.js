function titleize(names, cb) {
  let titled = names.map((name) => `Mx. ${name} Jingleheimer Schmidt`);
  cb(titled);
};

titleize(['John', 'Mary'], function(names) {
  names.forEach(name => console.log(name));
});