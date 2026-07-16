// Components - Circle top

import pictureLinette from '../../../pictures/circle_top.png'



const CircleTop = () => {

	return (

		<div style = {{
			display: 'flex',
			alignItems: 'center',
			justifyContent: 'center',
			width: (125 + 3) * 1.25,
			height: (125 + 3) * 1.25,
			border: '4px solid black',
			borderRadius: '100%'
		}}>

			<div style = {{
				display: 'flex',
				alignItems: 'center',
				justifyContent: 'center',
				width: (125 + 3 - 12.225) * 1.25,
				height: (125 + 3 - 12.225) * 1.25,
				border: '4px solid black',
				borderRadius: '100%'
			}}>

				<img
				 	src = {pictureLinette}
					alt = 'User Profile'
					style = {{
						width: '100%',
						height: '100%',
						borderRadius: '100%'
				}}/>

			</div>

		</div>

	)

}



export { CircleTop }