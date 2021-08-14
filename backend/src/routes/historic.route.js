const { Router } = require('express')
const historicController = require('../controllers/historic.controller')
const router = Router()

router.get('/', historicController.getCommits)

module.exports = router