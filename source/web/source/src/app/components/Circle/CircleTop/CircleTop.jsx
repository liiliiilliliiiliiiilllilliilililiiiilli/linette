// Components - Circle top

import pictureLinette from '../../../pictures/circle_top.png'



const CircleTop = () => {

	return (

		<div style = {{
			display: 'flex',
			alignItems: 'center',
			justifyContent: 'center',
			height: 250 + 6,
			width: 250 + 6,
			paddingLeft: 1.5,
			paddingTop: 1.5,
			border: '6px solid black',
			borderRadius: '100%',
			scale: 1.25
		}}>

			<div style = {{
				display: 'flex',
				alignItems: 'center',
				justifyContent: 'center',
				height: 250 + 6 - 24.45,
				width: 250 + 6 - 24.45,
				border: '8px solid black',
				borderRadius: '100%'
			}}>

				<img
				 	src = {pictureLinette}
					alt = 'User Profile'
					style = {{
						height: '100%',
						width: '100%',
						borderRadius: '100%'
				}}/>

			</div>

		</div>

	)

}



export { CircleTop }