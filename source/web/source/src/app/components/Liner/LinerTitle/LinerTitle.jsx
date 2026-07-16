// Components - Liner text

const LinerTitle = ({text}) => {

	const Line = () => {

		return (

			<div style = {{
				position: 'absolute',
				width: '100%',
				height: 3,
				borderRadius: '100%',
				background: '#363636'
			}}/>

		)

	}


	const Title = () => {

		return (

			<div style = {{
				position: 'absolute',
				display: 'flex',
				alignItems: 'center',
				justifyContent: 'center',
				border: '3px solid #363636',
				borderRadius: 1000,
				background: '#090909'
			}}>

				<text style = {{
					paddingTop: 6,
					paddingLeft: 20.5,
					paddingRight: 20.5,
					paddingBottom: 7,
					color: 'white',
					fontFamily: 'system-ui',
					fontWeight: 'bold',
					fontSize: 32,
					textAlign: 'center',
					whiteSpace: 'pre-line'
				}}>

					{`· ${text} ·`}

				</text>

			</div>

		)

	}


	return (

		<div style = {{
			position: 'relative',
			display: 'flex',
			alignItems: 'center',
			justifyContent: 'center',
			width: '100%',
			paddingBottom: 20.5
		}}>

			<Line/>
			<Title/>

		</div>

	)

}



export { LinerTitle }