import React from "react";

class Calculator extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      value: 0,
      num1: "",
      num2: ""
    };
    this.setNum1 = this.setNum1.bind(this);
    this.setNum2 = this.setNum2.bind(this);
    this.add = this.add.bind(this);
  }

  setNum1(event) {
    let num1 = event.target.value ? parseInt(event.target.value) : "";
    this.setState({ num1 });
  }

  setNum2(event) {
    let num2 = event.target.value ? parseInt(event.target.value) : "";
    this.setState({ num2 });
  }

  add(event) {
    event.preventDefault();
    let result = this.state.num1 + this.state.num2;
    this.setState({ result });
  }
  
  render() {
    // let num1 = this.state.num1;
    // let num2 = this.state.num2;
    // let result = this.state.result;
    const { num1, num2, result } = this.state; //same as above. Faster way
    return (
      <div>
        <h1>React Calculator!</h1>
        Num1: <input onChange={this.setNum1} value={num1}/>
        <br/>
        Num2: <input onChange={this.setNum2} value={num2}/>
        <br/>
        <button onClick={this.add}> Add! </button>
        <h1> {result} </h1>
      </div>
    );
  }
}

export default Calculator;