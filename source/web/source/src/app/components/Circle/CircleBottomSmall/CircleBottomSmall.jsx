// Components - Circle bottom small

const CircleBottomSmall = ({picture, link}) => {

	return (

		 <a href = {link} target = '_blank' rel = 'noopener noreferrer'>

			<div style = {{
				display: 'flex',
				alignItems: 'center',
				justifyContent: 'center',
				height: 105,
				width: 105,
				paddingLeft: 1.5,
				paddingTop: 1.5,
				border: '4px solid #363636',
				borderRadius: '100%',
				scale: 1.25,
				background: '#090909'
			}}>

				<div style = {{
					display: 'flex',
					alignItems: 'center',
					justifyContent: 'center',
					height: 105 - 10,
					width: 105 - 10,
					borderRadius: '100%'
				}}>

					<img
						src = {picture}
						alt = 'User Profile'
						style = {{
							height: '100%',
							width: '100%',
							borderRadius: '100%'
					}}/>

				</div>

			</div>

		</a>

	)

}



export { CircleBottomSmall }