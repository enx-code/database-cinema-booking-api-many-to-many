const express = require("express");
const { route } = require("./server");
const { getSeatsbyScreenId, createTicket } = require("./conrollers");
const router = express.Router();

router.route("/seats/:id").get(getSeatsbyScreenId);
router.route("/ticket").post(createTicket)

module.exports = router;
