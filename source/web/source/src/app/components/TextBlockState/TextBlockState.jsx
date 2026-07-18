// Components - Text block state

import style from './style/style.module.sass'

import pictureArrowBlue from '../../pictures/arrow_blue.svg'



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
							alt = 'стрелка'
							className = {style.Arrow}/>

						<text className = {style.Text}>

							{'Ранее'}

						</text>

					</div>

				)

			}


			const Hint = () => {

				return (

					<text className = {style.Hint}>

						{'Последнее обновление: 15 июля 2026'}

					</text>

				)

			}


			const Forward = () => {

				return (

					<div className = {style.Forward}>

						<text className = {style.Text}>

							{'Позже'}

						</text>

						<img
							src = {pictureArrowBlue}
							alt = 'стрелка'
							className = {style.Arrow}/>

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
			style = {{
				width: width
		}}>

			{text.map (paragraph => (

				<>

					<text
						className = {style.Title}
						style = {{
							textAlign: !isCentralized ? 'left' : 'center'
					}}>

						{paragraph.title}

					</text>

					<text
						className = {style.Text}
						style = {{
							textAlign: !isCentralized ? 'left' : 'center'
					}}>

						{paragraph.text}

					</text>

				</>

			))}

			<Controller/>

		</div>

	)

}



export { TextBlockState }