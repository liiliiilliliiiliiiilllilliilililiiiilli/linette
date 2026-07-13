// Application's root file

import { createRoot } from 'react-dom/client'
import { StrictMode } from 'react'

import { App } from '../app/App.jsx'

import './root.css'



createRoot (document.getElementById ('root')).render (

	<StrictMode>

		<App/>

	</StrictMode>

)