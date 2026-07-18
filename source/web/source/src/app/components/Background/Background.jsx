// Components - Background

import pictureBackground from '../.././pictures/background.png'

import style from './style/style.module.sass'



const Background = ({children}) => {

	return (

		<div className = {style.Background}>

			<img
				src = {pictureBackground}
				alt = 'Задний фон'
				className = {style.Picture}/>

			<div className = {style.Content}>

				{children}

			</div>

		</div>

	)
}



export { Background }