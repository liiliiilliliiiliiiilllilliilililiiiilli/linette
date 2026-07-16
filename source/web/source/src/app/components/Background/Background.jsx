// Components - Background

import pictureBackground from '../.././pictures/background.png'



const Background = ({children}) => {

	return (

		<div style = {{
			position: 'relative',
			display: 'flex',
			justifyContent: 'center',
			width: '100%',
			minHeight: '100vh'
		}}>

			<img
				src = {pictureBackground}
				alt = 'Задний фон'
				style = {{
					position: 'absolute',
					width: '100%',
					top: -95,
					zIndex: 0,
					pointerEvents: 'none',
					userSelect: 'none'
				}}
			/>

			<div style = {{
				position: 'relative',
				display: 'flex',
				flexDirection: 'column',
				alignItems: 'center',
				width: '100%',
				gap: 100,
				paddingTop: 50,
				zIndex: 1
			}}>

				{children}

			</div>

		</div>

	)
}



export { Background }