// Hooks - Use autotune pageTitle

import { useEffect } from 'react'
import { useTranslation } from 'react-i18next'



const useAutotunePageTitle = () => {

	const {t, i18n} = useTranslation ()


	useEffect (() => {

		if (i18n.language) {

			document.documentElement.lang = i18n.language
			document.title = t ('pageTitle')

		}

	}, [t, i18n.language])

}



export { useAutotunePageTitle }