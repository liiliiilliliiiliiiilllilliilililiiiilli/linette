// Components - Circle bottom big

const CircleBottomBig = ({picture, link}) => {

	return (

		<a href = {link} target = '_blank' rel = 'noopener noreferrer'>

			<div style = {{
				display: 'flex',
				alignItems: 'center',
				justifyContent: 'center',
				width: 115,
				height: 115,
				paddingTop: 0.75,
				paddingLeft: 0.75,
				border: '2px solid #363636',
				borderRadius: '100%',
				background: '#090909',
				scale: 1.25
			}}>

				<div style = {{
					display: 'flex',
					alignItems: 'center',
					justifyContent: 'center',
					width: 110,
					height: 110,
					borderRadius: '100%'
				}}>

					<img
						src = {picture}
						alt = 'User Profile'
						style = {{
							width: '100%',
							height: '100%',
							borderRadius: '100%'
					}}/>

				</div>

			</div>

		</a>

	)

}



export { CircleBottomBig }