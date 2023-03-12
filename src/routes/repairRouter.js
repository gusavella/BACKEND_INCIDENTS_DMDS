let express = require('express');
let router = express.Router();
let path = require('path');
const adminMiddleware = require('../middlewares/adminMiddleware')
const repairController =require('../controllers/repairController');

   router.get('/all',repairController.all)
   router.get('/detail/:id',repairController.detail)
   // router.post('/add', adminMiddleware, repairStateController.create)
   // router.put('/:id/edit', repairStateController.update)
   // router.delete('/:id',repairStateController.delete)

module.exports = router;
