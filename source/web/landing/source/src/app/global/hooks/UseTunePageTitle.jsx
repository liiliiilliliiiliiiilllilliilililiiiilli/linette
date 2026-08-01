// Hooks - UseTunePageTitle

import { useTranslation } from 'react-i18next'
import { useEffect } from 'react'



const useTunePageTitle = () => {

	const {t, i18n} = useTranslation ()


	useEffect (() => {

		if (i18n.language) {

			document.documentElement.lang = i18n.language
			document.title = t ('pageTitle')

		}

	}, [i18n.language, t])

}



export { useTunePageTitle }