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
		styleBack,
		styleMain,
		styleForward

	} = useHistoryController (text)


	const titleStyle = {textAlign: !isCentralized ? 'left' : 'center'}
	const paragraphStyle = {textAlign: !isCentralized ? 'left' : 'center'}


	return (

		<div
			className = {style.TextBlockHistory}
			style = {{width: width}}
		>

			{text.contentStack.map ((content, index) => (

				<Fragment key = {index}>

					<span
						className = {style.Title}
						style = {titleStyle}
					>

						{content.title}

					</span>

					<span
						className = {style.Paragraph}
						style = {paragraphStyle}
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
				styleBack = {styleBack}
				styleMain = {styleMain}
				styleForward = {styleForward}
			/>

		</div>

	)

}



export { TextBlockHistory }