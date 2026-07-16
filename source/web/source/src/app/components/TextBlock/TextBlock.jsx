// Components - Text block

const TextBlock = ({text, width, isCentralized = false}) => {

	return (

		<div style = {{
			display: 'flex',
			flexDirection: 'column',
			width: width,
			minWidth: 400,
			maxWidth: 'calc(100% - 50px)',
			height: 'fit-content',
			gap: 2,
			paddingTop: 19,
			paddingBottom: 19,
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

		</div>

	)

}



export { TextBlock }