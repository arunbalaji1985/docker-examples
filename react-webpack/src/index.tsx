import React from "react";
import ReactDOM from "react-dom";

interface AppProps {
    color?: string;
}

class App extends React.Component<AppProps> {
    render() {
        return <div>Hi {this.props.color || "sdasd"}</div>
    }
}

const App2 = (props: AppProps) => {
    return (
        <div>Hi {props.color}</div>
    )
}

ReactDOM.render(
    // <App color="red"/>,
    <App2 color="red"/>,
    document.querySelector('#root')
)