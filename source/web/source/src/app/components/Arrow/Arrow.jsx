// Components - Arrow

import pictureArrow from '../../pictures/arrow.svg'



const Arrow = () => {

	return (

		<div style = {{
			scale: 0.85,
			paddingTop: 29
		}}>

			<div style = {{
				display: 'flex',
				alignItems: 'center',
				justifyContent: 'center',
				width: 80,
				height: 80,
				border: '7px solid #202020',
				borderRadius: '100%',
				background: '#000000',
				overflow: 'hidden'
			}}>

				<img
					src = {pictureArrow}
					alt = 'стрелка'
					style = {{
						width: 85,
						height: 85
				}}/>

			</div>

		</div>

	)

}



export { Arrow }