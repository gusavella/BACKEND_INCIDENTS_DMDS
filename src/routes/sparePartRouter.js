let express = require('express');
let router = express.Router();
let path = require('path');
const adminMiddleware = require('../middlewares/adminMiddleware')
const sparePartController =require('../controllers/sparePartController');

   router.get('/all',sparePartController.all)
   router.get('/detail/:id',sparePartController.detail)
   // router.post('/add', adminMiddleware, sparePartController.create)
   // router.put('/:id/edit', sparePartController.update)
   // router.delete('/:id',sparePartController.delete)

module.exports = router;
