// Components - Liner text

const LinerTitle = ({text}) => {

	const Line = () => {

		return (

			<div style = {{
				position: 'absolute',
				width: '100%',
				height: 6,
				borderRadius: '100%',
				background: '#363636'
			}}>



			</div>

		)

	}


	const Title = () => {

		return (

			<div style = {{
				position: 'absolute',
				display: 'flex',
				alignItems: 'center',
				justifyContent: 'center',
				border: '5px solid #363636',
				borderRadius: 1000,
				background: '#090909'
			}}>

				<text style = {{
					color: 'white',
					fontFamily: 'system-ui',
					fontWeight: 'bold',
					fontSize: 65,
					textAlign: 'center',
					whiteSpace: 'pre-line',
					paddingTop: 12,
					paddingLeft: 41,
					paddingRight: 41,
					paddingBottom: 14
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
			paddingBottom: 41
		}}>

			<Line/>
			<Title/>

		</div>

	)

}



export { LinerTitle }