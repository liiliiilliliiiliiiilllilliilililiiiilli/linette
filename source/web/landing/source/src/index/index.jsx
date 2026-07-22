// Application's root file

import { createRoot } from 'react-dom/client'

import { StrictMode } from 'react'

import App from '@app/App'

import './index.sass'

import './locales/locales.js'



createRoot (document.getElementById ('root')).render (

	<StrictMode>

		<App/>

	</StrictMode>

)