let express = require('express');
let router = express.Router();
let path = require('path');
const adminMiddleware = require('../middlewares/adminMiddleware')
const repairSparePartController =require('../controllers/repairSparePartController');

   router.get('/all',repairSparePartController.all)
   router.get('/detail/:id',repairSparePartController.detail)
   // router.post('/add', adminMiddleware, repairSparePartController.create)
   // router.put('/:id/edit', repairSparePartController.update)
   // router.delete('/:id',repairSparePartController.delete)

module.exports = router;
