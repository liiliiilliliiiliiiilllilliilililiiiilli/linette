// Components - Bubble bottom big

import style from './style/style.module.sass'



const BubbleBottomBig = ({picture, link}) => {

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
						alt = 'Li'
						draggable = {false}
						className = {style.Picture}
					/>

				</div>

			</div>

		</a>

	)

}



export { BubbleBottomBig }