// Components - Text block history

import { useHistoryController } from './hooks/UseHistoryController'

import { Fragment } from 'react'
import { HistoryController } from './elements/HistoryController'

import style from './style/style.module.sass'



const TextBlockHistory = ({text, width, isCentralized = false}) => {

	const {

		currentHistoryIndex,
		goBack,
		goForward,
		styleControllerBack,
		styleControllerMain,
		styleControllerForward

	} = useHistoryController (text)


	const styleMain = {

		width: width

	}

	const styleTitle = {

		textAlign: !isCentralized ? 'left' : 'center'

	}

	const styleParagraph = {

		textAlign: !isCentralized ? 'left' : 'center'

	}


	return (

		<div
			className = {style.TextBlockHistory}
			style = {styleMain}
		>

			{text.contentStack.map ((content, index) => (

				<Fragment key = {index}>

					<span
						className = {style.Title}
						style = {styleTitle}
					>

						{content.title}

					</span>

					<span
						className = {style.Paragraph}
						style = {styleParagraph}
					>

						{content.paragraphStack.at (currentHistoryIndex)}

					</span>

				</Fragment>

			))}

			<HistoryController
				text = {text}
				currentHistoryIndex = {currentHistoryIndex}
				goBack = {goBack}
				goForward = {goForward}
				styleBack = {styleControllerBack}
				styleMain = {styleControllerMain}
				styleForward = {styleControllerForward}
			/>

		</div>

	)

}



export { TextBlockHistory }