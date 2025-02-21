// I would store these in .env file but it is a test server
export const TRANSPORT_VALUES = {
	host: "sandbox.smtp.mailtrap.io",
	port: 587,
	secure: false,
	auth: {
		user: "8138074f62ab8c",
		pass: "26767325218efe",
	},
};

export const MAIL_OPTIONS = {
	from: {
		address: "hello@demomailtrap.com",
		name: "Cosmic Headquarters",
	},
	subject: "Welcome to Galactic Adventure!",
	text: "Begin your journey Spacefarer!",
};
