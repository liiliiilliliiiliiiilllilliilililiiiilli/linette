// Components - Circle bottom small

import style from './style/style.module.sass'



const CircleBottomSmall = ({picture, link}) => {

	return (

		<a href = {link} target = '_blank' rel = 'noopener noreferrer'>

			<div className = {style.RingOut}>

				<div className = {style.RingIn}>

					<img
						src = {picture}
						alt = 'User Profile'
						className = {style.Picture}/>

				</div>

			</div>

		</a>

	)

}



export { CircleBottomSmall }