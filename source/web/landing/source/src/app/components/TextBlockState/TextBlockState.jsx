// Components - Text block state

import pictureArrowBlue from '@pictures/arrow_blue.png'

import style from './style/style.module.sass'

import { Fragment, useState, useEffect } from 'react'



const TextBlockState = ({text, width, isCentralized = false}) => {

	const [currentHistoryIndex, setCurrentHistoryIndex] = useState (-1)

	const [styleMain, setStyleMain] = useState ()
	const [styleBack, setStyleBack] = useState ()
	const [styleForward, setStyleForward] = useState ()


	const historySteps = text.hint.dates.length


	const back = () => {

		setCurrentHistoryIndex (-(((historySteps + -currentHistoryIndex - 1 + 1) % historySteps) + 1))

	}


	const forward = () => {

		setCurrentHistoryIndex (-(((historySteps + -currentHistoryIndex - 1 - 1) % historySteps) + 1))

	}


	useEffect (() => {

		setStyleMain ({

			justifyContent: historySteps >= 1 ? 'space-between' : 'center'

		})

		setStyleBack ({

			display: historySteps >= 1 ? 'flex' : 'none',
			pointerEvents: -currentHistoryIndex != historySteps ? 'auto' : 'none',
			filter: -currentHistoryIndex != historySteps ? 'grayscale(0%)' : 'grayscale(100%)'

		})

		setStyleForward ({

			display: historySteps >= 1 ? 'flex' : 'none',
			pointerEvents: currentHistoryIndex != -1 ? 'auto' : 'none',
			opacity: currentHistoryIndex != -1 ? '100%' : '0%'

		})

	}, [currentHistoryIndex])


	const Controller = () => {

		const Line = () => {

			return (

				<div className = {style.Line}/>

			)

		}


		const Main = () => {

			const Back = () => {

				return (

					<div
						onClick = {back}
						className = {style.Back}
						style = {styleBack}
					>

						<img
							src = {pictureArrowBlue}
							alt = 'Arrow'
							draggable = {false}
							className = {style.Arrow}
						/>

						<span className = {style.Text}>

							{text.buttons.left}

						</span>

					</div>

				)

			}


			const Hint = () => {

				return (

					<span className = {style.Hint}>

						{(currentHistoryIndex == -1 ? text.hint.last : text.hint.previous) + text.hint.dates.at (currentHistoryIndex)}

					</span>

				)

			}


			const Forward = () => {

				return (

					<div
						onClick = {forward}
						className = {style.Forward}
						style = {styleForward}
					>

						<span className = {style.Text}>

							{text.buttons.right}

						</span>

						<img
							src = {pictureArrowBlue}
							alt = 'Arrow'
							draggable = {false}
							className = {style.Arrow}
						/>

					</div>

				)

			}


			return (

				<div
					className = {style.Main}
					style = {styleMain}
				>

					<Back/>
					<Hint/>
					<Forward/>

				</div>

			)

		}


		return (

			<div className = {style.Controller}>

				<Line/>
				<Main/>

			</div>

		)

	}


	return (

		<div
			className = {style.TextBlockState}
			style = {{width: width}}
		>

			{text.text.map ((paragraph, index) => (

				<Fragment key = {index}>

					<span
						className = {style.Title}
						style = {{textAlign: !isCentralized ? 'left' : 'center'}}
					>

						{paragraph.title}

					</span>

					<span
						className = {style.Text}
						style = {{textAlign: !isCentralized ? 'left' : 'center'}}
					>

						{paragraph.text.at (currentHistoryIndex)}

					</span>

				</Fragment>

			))}

			<Controller/>

		</div>

	)

}



export default TextBlockState