let express = require('express');
let router = express.Router();
let path = require('path');
const adminMiddleware = require('../middlewares/adminMiddleware')
const machineController =require('../controllers/machineController');

   router.get('/all',machineController.all)
   router.get('/detail/:id',machineController.detail)
   // router.post('/add', adminMiddleware, modelContropller.create)
   // router.put('/:id/edit', modelContropller.update)
   // router.delete('/:id',modelContropller.delete)

module.exports = router;
