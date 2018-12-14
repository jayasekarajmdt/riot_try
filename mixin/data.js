riot.mixin({
  _url: "http://localhost:8000/calcApp/dataset",
  handler: riot.observable(),

  backendConnect: function(data) {
    console.log("from backend " + data);

    let xhr = new XMLHttpRequest();
    xhr.open("GET", this._url);
    xhr.onload = () => {
      console.log(JSON.parse(xhr.responseText));
      var dataset = JSON.parse(xhr.responseText);
      console.log(dataset[0].input_one);
      this.handler.trigger("Backend", { dataset });
    };
    xhr.send();
  }
});
