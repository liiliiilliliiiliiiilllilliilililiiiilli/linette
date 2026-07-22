// Components - Text block

import { Fragment } from 'react'

import style from './style/style.module.sass'



const TextBlock = ({text, width, isCentralized = false}) => {

	return (

		<div
			className = {style.TextBlock}
			style = {{width: width}}
		>

			{text.map ((paragraph, index) => (

				<Fragment key = {index}>

					{index >= 1 ? <div style = {{height: '1rem'}}/> : <></>}

					<span
						className = {style.Title}
						style = {{textAlign: !isCentralized ? 'left' : 'center'}}
					>

						{paragraph.title}

					</span>

					<span
						className = {style.Text}
						style = {{textAlign: !isCentralized ? 'left' : 'center'}}
					>

						{paragraph.text}

					</span>

				</Fragment>

			))}

		</div>

	)

}



export default TextBlock