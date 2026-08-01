// Application's entry point file

import { createRoot } from 'react-dom/client'

import { StrictMode } from 'react'
import { App } from '@app/App'

import '@texts/texts.js'

import './index.sass'



createRoot (document.getElementById ('root')).render (

	<StrictMode>

		<App/>

	</StrictMode>

)