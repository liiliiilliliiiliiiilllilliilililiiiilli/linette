// Components - Background

import pictureBackground from '../.././pictures/background.png'



const Background = ({children}) => {

	return (

		<div style = {{
			background: 'transparent'
		}}>

			<img
				src = {pictureBackground}
				alt = 'Задний фон'
				style = {{
					position: 'absolute',
					pointerEvents: 'none',
					userSelect: 'none',
					width: '100%',
					top: -200
			}}/>

			<div style = {{
				display: 'flex',
				flexDirection: 'column',
				position: 'absolute',
				height: '100%',
				width: '100%',
				paddingTop: 119,
				paddingBottom: 119,
				gap: 200
			}}>

				{children}

			</div>

		</div>

	)

}



export { Background }