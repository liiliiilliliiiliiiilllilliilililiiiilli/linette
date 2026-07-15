// Components - Text block state

import pictureArrowBlue from '../../pictures/arrow_blue.svg'



const TextBlockState = ({text, width, isCentralized = false}) => {

	const Controller = () => {

		const Main = () => {

			const Back = () => {

				return (

					<div style = {{
						display: 'flex',
						flexDirection: 'row',
						alignItems: 'center',
						justifyContent: 'center',
						gap: 5,
						paddingRight: 25,
						background: '#090909',
						opacity: 0,  // Временно
						pointerEvents: 'none'  // Временно
					}}>

						<img
							src = {pictureArrowBlue}
							alt = 'стрелка'
							style = {{
								width: 59,
								height: 59
						}}/>

						<text style = {{
							color: '#80879E',
							fontFamily: 'system-ui',
							fontWeight: 'bold',
							fontSize: 32,
							textAlign: 'center',
							whiteSpace: 'pre-line'
						}}>

							{'Ранее'}

						</text>

					</div>

				)

			}


			const Hint = () => {

				return (

					<text style = {{
						color: 'white',
						fontFamily: 'system-ui',
						fontWeight: 'bold',
						fontSize: 32,
						textAlign: 'center',
						whiteSpace: 'pre-line',
						paddingLeft: 25,
						paddingRight: 25,
						background: '#090909',
						color: '#808080'
					}}>

						{'Последнее обновление: 15 июля 2026'}

					</text>

				)

			}


			const Forward = () => {

				return (

					<div style = {{
						display: 'flex',
						flexDirection: 'row',
						alignItems: 'center',
						justifyContent: 'center',
						paddingLeft: 25,
						background: '#090909',
						opacity: 0,  // Временно
						pointerEvents: 'none'  // Временно
					}}>

						<text style = {{
							color: '#80879E',
							fontFamily: 'system-ui',
							fontWeight: 'bold',
							fontSize: 32,
							textAlign: 'center',
							whiteSpace: 'pre-line'
						}}>

							{'Позже'}

						</text>

						<img
							src = {pictureArrowBlue}
							alt = 'стрелка'
							style = {{
								width: 59,
								height: 59,
								transform: 'rotate(180deg)'
						}}/>

					</div>

				)

			}


			return (

				<div style = {{
					display: 'flex',
					flexDirection: 'row',
					alignItems: 'center',
					justifyContent: 'space-between',
					zIndex: 5,
					paddingLeft: 44,
					paddingRight: 44
				}}>

					<Back/>
					<Hint/>
					<Forward/>

				</div>

			)

		}


		const Line = () => {

			return (

				<div style = {{
					position: 'relative',
					display: 'flex',
					width: '100',
					height: 4,
					top: 36 - 4 - 2,
					background: '#1c1c1c'
				}}/>

			)

		}


		return (

			<div style = {{
				position: 'relative',
				display: 'flex',
				flexDirection: 'column',
				width: '100%',
				paddingTop: 20,
			}}>

				<Line/>
				<Main/>

			</div>

		)

	}


	return (

		<div style = {{
			display: 'flex',
			flexDirection: 'column',
			borderRadius: 32,
			border: '4px solid #1C1C1C',
			background: '#090909',
			width: width,
			height: 'fit-content',
			paddingTop: 38,
			paddingBottom: 35,
			gap: 4
		}}>

			{text.map (paragraph => (

				<>

					<text style = {{
						color: 'white',
						fontFamily: 'system-ui',
						fontWeight: 'bold',
						fontSize: 44,
						whiteSpace: 'pre-line',
						paddingTop: 12,
						paddingLeft: 41 + 21,
						paddingRight: 41 + 21,
						paddingBottom: 14,
						textAlign: !isCentralized ? 'left' : 'center'
					}}>

						{paragraph.title}

					</text>

					<text style = {{
						color: 'white',
						fontFamily: 'system-ui',
						fontWeight: 'normal',
						fontSize: 32,
						whiteSpace: 'pre-line',
						paddingTop: 12,
						paddingLeft: 41 + 21,
						paddingRight: 41 + 21,
						paddingBottom: 14,
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