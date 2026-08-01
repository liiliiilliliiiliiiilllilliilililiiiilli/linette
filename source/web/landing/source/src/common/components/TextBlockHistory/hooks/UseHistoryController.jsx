// Components - Text block history - Hooks - Use history controller

import { useState, useEffect } from 'react'



const useHistoryController = (text) => {

	const [currentHistoryIndex, setCurrentHistoryIndex] = useState (-1)

	const [styleBack, setStyleBack] = useState ()
	const [styleMain, setStyleMain] = useState ()
	const [styleForward, setStyleForward] = useState ()


	const historySteps = text.hint.dates.length


	const goBack = () => {

		setCurrentHistoryIndex (-(((historySteps + -currentHistoryIndex - 1 + 1) % historySteps) + 1))

	}


	const goForward = () => {

		setCurrentHistoryIndex (-(((historySteps + -currentHistoryIndex - 1 - 1) % historySteps) + 1))

	}


	useEffect (() => {

		setStyleBack ({

			display: historySteps >= 1 ? 'flex' : 'none',
			pointerEvents: -currentHistoryIndex != historySteps ? 'auto' : 'none',
			filter: -currentHistoryIndex != historySteps ? 'grayscale(0%)' : 'grayscale(100%)'

		})

		setStyleMain ({

			justifyContent: historySteps >= 1 ? 'space-between' : 'center'

		})

		setStyleForward ({

			display: historySteps >= 1 ? 'flex' : 'none',
			pointerEvents: currentHistoryIndex != -1 ? 'auto' : 'none',
			opacity: currentHistoryIndex != -1 ? '100%' : '0%'

		})

	}, [currentHistoryIndex])


	return {

		currentHistoryIndex,
		goBack,
		goForward,
		styleBack,
		styleMain,
		styleForward

	}

}



export { useHistoryController }