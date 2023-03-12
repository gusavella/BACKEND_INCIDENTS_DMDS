let express = require('express');
let router = express.Router();
let path = require('path');
const adminMiddleware = require('../middlewares/adminMiddleware')
const repairStateController =require('../controllers/repairStateController');

   router.get('/all',repairStateController.all)
   router.get('/detail/:id',repairStateController.detail)
   // router.post('/add', adminMiddleware, repairStateController.create)
   // router.put('/:id/edit', repairStateController.update)
   // router.delete('/:id',repairStateController.delete)

module.exports = router;
