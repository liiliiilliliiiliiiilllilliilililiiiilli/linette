// Components - Background

import pictureBackground from '../.././pictures/background.png'



const Background = ({children}) => {

	return (

		<div style = {{
			display: 'flex',
			justifyContent: 'center',
			width: '200%',
		}}>

			<img
				src = {pictureBackground}
				alt = 'Задний фон'
				style = {{
					position: 'absolute',
					width: '200%',
					top: -200,
					pointerEvents: 'none',
					userSelect: 'none'
			}}/>

			<div style = {{
				display: 'flex',
				flexDirection: 'column',
				position: 'absolute',
				height: '200%',
				width: '200%',
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