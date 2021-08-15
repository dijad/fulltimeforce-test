const { Router } = require('express')
const historicController = require('../controllers/historic.controller')
const router = Router()

router.get('/commits', historicController.getCommits)

module.exports = router