// Components - Text block

const TextBlock = ({text, width, isCentralized = false}) => {

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
			// paddingLeft: 21,
			// paddingRight: 21,
			paddingBottom: 38,
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

		</div>

	)

}



export { TextBlock }