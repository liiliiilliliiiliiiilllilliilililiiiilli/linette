// Components - Arrow

import pictureArrow from '../../pictures/arrow.svg'



const Arrow = () => {

	return (

		<div style = {{
			paddingTop: 14.5,
			scale: 0.85
		}}>

			<div style = {{
				display: 'flex',
				alignItems: 'center',
				justifyContent: 'center',
				width: 40,
				height: 40,
				border: '3.5px solid #202020',
				borderRadius: '100%',
				background: '#000000',
				overflow: 'hidden'
			}}>

				<img
					src = {pictureArrow}
					alt = 'стрелка'
					style = {{
						width: 42.5,
						height: 42.5
				}}/>

			</div>

		</div>

	)

}



export { Arrow }