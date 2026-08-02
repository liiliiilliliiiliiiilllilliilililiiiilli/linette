// Components - Bubble bottom small

import style from './style/style.module.sass'



const BubbleBottomSmall = ({picture, link}) => {

	return (

		<a
			href = {link}
			draggable = {false}
			rel = 'noopener noreferrer'
		>

			<div className = {style.RingOut}>

				<div className = {style.RingIn}>

					<img
						src = {picture}
						alt = 'Socials'
						draggable = {false}
						className = {style.Picture}
					/>

				</div>

			</div>

		</a>

	)

}



export { BubbleBottomSmall }