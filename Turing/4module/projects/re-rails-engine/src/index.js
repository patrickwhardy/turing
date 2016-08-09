import React from 'react';
import ReactDOM from 'react-dom';
import App from './App';
import './index.css';
import Requests from './requests'


ReactDOM.render(
  <App />,
  document.getElementById('root')
);

Requests.getMerchants();
