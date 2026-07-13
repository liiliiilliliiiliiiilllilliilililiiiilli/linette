import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'

import { App } from '../app/App.jsx'

import './root.css'



createRoot (document.getElementById ('root')).render (

	<StrictMode>

		<App/>

	</StrictMode>

)