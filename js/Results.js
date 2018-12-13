// function Results(value) {
//   riot.observable(this);

//   this.on("add_value", function() {

//     console.log("here");
//   });
// }

function Store() {
  riot.observable(this);
}

riot.store = new Store();

riot.secondStore = new Store();
