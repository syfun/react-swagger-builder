import React from 'react';
import SwaggerUI from "swagger-ui-react";
import "swagger-ui-react/swagger-ui.css";

function App() {
    const url = process.env.REACT_APP_API_URL;
    return <SwaggerUI url={url} />;
}

export default App;
