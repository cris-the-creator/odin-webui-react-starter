import React from 'react'
import ReactDOM from 'react-dom/client'
import App from './App.tsx'
import DisableDevtool from 'disable-devtool'
import './index.css'

DisableDevtool()

ReactDOM.createRoot(document.getElementById('root')!).render(
  <React.StrictMode>
    <App />
  </React.StrictMode>,
)
