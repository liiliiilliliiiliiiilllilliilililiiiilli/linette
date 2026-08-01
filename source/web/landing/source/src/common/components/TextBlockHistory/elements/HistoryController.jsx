// Components - Text block history - Elements - History controller

import pictureArrowBlue from '@pictures/arrow_blue.png'

import style from '../style/style.module.sass'



const HistoryController = ({text, currentHistoryIndex, goBack, goForward, styleBack, styleMain, styleForward}) => {

	const Line = () => {

		return (

			<div className = {style.Line}/>

		)

	}


	const Main = () => {

		const Back = () => {

			return (

				<div
					onClick = {goBack}
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

			const prefix = currentHistoryIndex == -1 ? text.hint.last : text.hint.previous
			const main = text.hint.dates.at (currentHistoryIndex)

			const hint = prefix + main


			return (

				<span className = {style.Hint}>

					{hint}

				</span>

			)

		}


		const Forward = () => {

			return (

				<div
					onClick = {goForward}
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

		<div className = {style.HistoryController}>

			<Line/>

			<Main/>

		</div>

	)

}



export { HistoryController }