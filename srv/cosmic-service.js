import cds from "@sap/cds";
import { sendEmail } from "./email-service.js";

export default class CosmicService extends cds.ApplicationService {
	async init() {
		const { Spacefarers } = this.entities;

		const initialValues = {
			stardustCollection: 0,
			wormholeNavSkill: "Beginner",
			spacesuitColor: "white",
			position_ID: "34e28c85-7426-4fff-a71b-e18dc39a986e", // New recruits start as Cadets
		};

		this.before("CREATE", Spacefarers, async (req) => {
			const { name, originPlanet, department_ID, email } = req.data;

			if (!name || !originPlanet || !department_ID || !email) {
				return req.error(
					400,
					"name, originPlanet, department_ID and email are required."
				);
			}

			Object.assign(req.data, initialValues);
		});

		this.after("CREATE", Spacefarers, async (data) => {
			await sendEmail(data.email);
		});

		await super.init();
	}
}
