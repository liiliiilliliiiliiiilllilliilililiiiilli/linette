// Components - Text block

import { Fragment } from 'react'

import style from './style/style.module.sass'



const TextBlock = ({text, width, isCentralized = false}) => {

	const titleStyle = {textAlign: !isCentralized ? 'left' : 'center'}
	const paragraphStyle = {textAlign: !isCentralized ? 'left' : 'center'}


	return (

		<div
			className = {style.TextBlock}
			style = {{width: width}}
		>

			{text.map ((content, index) => (

				<Fragment key = {index}>

					{index >= 1 ? <div style = {{height: '1rem'}}/> : <></>}

					<span
						className = {style.Title}
						style = {titleStyle}
					>

						{content.title}

					</span>

					<span
						className = {style.Paragraph}
						style = {paragraphStyle}
					>

						{content.paragraph}

					</span>

				</Fragment>

			))}

		</div>

	)

}



export { TextBlock }