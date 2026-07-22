// Components - Circle bottom small

import style from './style/style.module.sass'



const CircleBottomSmall = ({picture, link}) => {

	return (

		<a
			href = {link}
			rel = 'noopener noreferrer'
		>

			<div className = {style.RingOut}>

				<div className = {style.RingIn}>

					<img
						src = {picture}
						alt = 'Socials'
						className = {style.Picture}
					/>

				</div>

			</div>

		</a>

	)

}



export default CircleBottomSmall