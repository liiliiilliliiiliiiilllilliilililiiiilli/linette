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
						gap: 2.5,
						paddingRight: 12.5,
						background: '#090909',
						opacity: 0,  // Временно
						pointerEvents: 'none'  // Временно
					}}>

						<img
							src = {pictureArrowBlue}
							alt = 'стрелка'
							style = {{
								width: 29.5,
								height: 29.5
						}}/>

						<text style = {{
							color: '#80879E',
							textAlign: 'center',
							fontFamily: 'system-ui',
							fontWeight: 'bold',
							fontSize: 16,
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
						paddingLeft: 12.5,
						paddingRight: 12.5,
						background: '#090909',
						textAlign: 'center',
						color: '#808080',
						fontFamily: 'system-ui',
						fontWeight: 'bold',
						fontSize: 16,
						whiteSpace: 'pre-line'
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
						gap: 2.5,
						paddingLeft: 12.5,
						background: '#090909',
						opacity: 0,  // Временно
						pointerEvents: 'none'  // Временно
					}}>

						<text style = {{
							textAlign: 'center',
							color: '#80879E',
							fontFamily: 'system-ui',
							fontWeight: 'bold',
							fontSize: 16,
							whiteSpace: 'pre-line'
						}}>

							{'Позже'}

						</text>

						<img
							src = {pictureArrowBlue}
							alt = 'стрелка'
							style = {{
								width: 29.5,
								height: 29.5,
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
					paddingLeft: 22,
					paddingRight: 22,
					zIndex: 5
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
					height: 2,
					top: 15,
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
				paddingTop: 10
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
			width: width,
			maxWidth: 'calc(100% - 50px)',
			height: 'fit-content',
			gap: 2,
			paddingTop: 19,
			paddingBottom: 17.5,
			border: '2px solid #1C1C1C',
			borderRadius: 16,
			background: '#090909'
		}}>

			{text.map (paragraph => (

				<>

					<text style = {{
						paddingTop: 6,
						paddingLeft: 20.5 + 10.5,
						paddingRight: 20.5 + 10.5,
						paddingBottom: 7,
						color: 'white',
						fontFamily: 'system-ui',
						fontWeight: 'bold',
						fontSize: 22,
						textAlign: !isCentralized ? 'left' : 'center',
						whiteSpace: 'pre-line'
					}}>

						{paragraph.title}

					</text>

					<text style = {{
						paddingTop: 6,
						paddingLeft: 20.5 + 10.5,
						paddingRight: 20.5 + 10.5,
						paddingBottom: 7,
						color: 'white',
						fontFamily: 'system-ui',
						fontWeight: 'normal',
						fontSize: 16,
						textAlign: !isCentralized ? 'left' : 'center',
						whiteSpace: 'pre-line'
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