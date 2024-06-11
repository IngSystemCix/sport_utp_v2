/** @type {import('tailwindcss').Config} */
module.exports = {
  darkMode: "class",
  content: ["./src/main/webapp/js/*.js", "./src/main/webapp/*.jsp"],
  theme: {
    extend: {
		colors: {
			"blue-dark" : "#102840",
			"red-light" : "#ca1c1f",
			"gold" : "#f1c51f",
			"white-bone" : "#ecf4f9",
			"purple-light": "#aaa0fa",
			"purple-dark" : "#6528e0",
			"green-dark": "#22aa00"
		},
		keyframes: {
			customPulse: {
				'0%, 100%': { opacity: '1' },
	          	'50%': { opacity: '0.9' },
			}
		},
		animation: {
			customPulse: 'customPulse 2s cubic-bezier(0.4, 0, 0.6, 1) infinite',
		}
	},
  },
  plugins: [],
}

