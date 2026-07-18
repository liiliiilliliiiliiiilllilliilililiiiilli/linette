// Components - Text block

import style from './style/style.module.sass'



const TextBlock = ({text, width, isCentralized = false}) => {

	return (

		<div
			className = {style.TextBlock}
			style = {{
				width: width}}>

			{text.map (paragraph => (

				<>

					<text
						className = {style.Title}
						style = {{
							textAlign: !isCentralized ? 'left' : 'center'}}>

						{paragraph.title}

					</text>

					<text
						className = {style.Text}
						style = {{
							textAlign: !isCentralized ? 'left' : 'center'
						}}
					>

						{paragraph.text}

					</text>

				</>

			))}

		</div>

	)

}



export { TextBlock }