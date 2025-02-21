import cds from "@sap/cds";

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
			const { name, originPlanet, department_ID } = req.data;

			if (!name || !originPlanet || !department_ID) {
				return req.error(
					400,
					"name, originPlanet, and department_ID are required."
				);
			}

			Object.assign(req.data, initialValues);
		});

		await super.init();
	}
}
