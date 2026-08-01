// Components - Description

import style from './style/style.module.sass'



const Description = ({text}) => {

	return (

		<span className = {style.Text}>

			{text}

		</span>

	)

}



export { Description }