// Components - Text block state

import pictureArrowBlue from '@pictures/arrow_blue.png'

import style from './style/style.module.sass'



const TextBlockState = ({text, width, isCentralized = false}) => {

	const Controller = () => {

		const Line = () => {

			return (

				<div className = {style.Line}/>

			)

		}


		const Main = () => {

			const Back = () => {

				return (

					<div className = {style.Back}>

						<img
							src = {pictureArrowBlue}
							alt = 'Arrow'
							className = {style.Arrow}
						/>

						<text className = {style.Text}>

							{text.buttons.left}

						</text>

					</div>

				)

			}


			const Hint = () => {

				return (

					<text className = {style.Hint}>

						{text.hint.at (-1)}

					</text>

				)

			}


			const Forward = () => {

				return (

					<div className = {style.Forward}>

						<text className = {style.Text}>

							{text.buttons.right}

						</text>

						<img
							src = {pictureArrowBlue}
							alt = 'Arrow'
							className = {style.Arrow}
						/>

					</div>

				)

			}


			return (

				<div className = {style.Main}>

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

			{text.text.map (paragraph => (

				<>

					<text
						className = {style.Title}
						style = {{textAlign: !isCentralized ? 'left' : 'center'}}
					>

						{paragraph.title}

					</text>

					<text
						className = {style.Text}
						style = {{textAlign: !isCentralized ? 'left' : 'center'}}
					>

						{paragraph.text.at (-1)}

					</text>

				</>

			))}

			<Controller/>

		</div>

	)

}



export default TextBlockState