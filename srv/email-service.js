import nodemailer from "nodemailer";
import { MAIL_OPTIONS, TRANSPORT_VALUES } from "./email-config.js";

const transporter = nodemailer.createTransport(TRANSPORT_VALUES);

export async function sendEmail(recipient) {
	try {
		const mailOptions = {
			...MAIL_OPTIONS,
			to: recipient,
		};
		const info = await transporter.sendMail(mailOptions);

		return info.response;
	} catch (error) {
		throw new Error("Email sending failed: " + error.message);
	}
}
