const cds = require("@sap/cds");

module.exports = class AdminService extends cds.ApplicationService {
  async init() {
    const { remoteEquip, remoteFuncloc } = this.entities;
    const equip = await cds.connect.to("API_EQUIPMENT");
    const floc = await cds.connect.to("API_FUNCTIONALLOCATION");

    this.on("READ", "remoteEquip", async (req) => {
      return await equip.run(req.query);
    });

    // this.on("READ", "Equipment", async (req) => {
    //   const response = await equip.send({
    //     method: "GET",
    //     query: SELECT.from(remoteEquip)
    //   });
    //   response.$count = response.length;
    //   return response;

    // });

    this.on("READ", "remoteFuncloc", async (req) => {
      return floc.run(req.query);
    });

    // this.on("READ", "FunctionalLocation", async (req) => {
    //   const response = await floc.send({
    //     method: "GET",
    //     query: SELECT.from(remoteFuncloc)
    //   });
    //   response.$count = response.length;
    //   return response;
    // });
    super.init(...arguments);
  }
};
