let express = require('express');
let router = express.Router();
let path = require('path');
const adminMiddleware = require('../middlewares/adminMiddleware')
const modelController =require('../controllers/modelController');

   router.get('/all',modelController.all)
   router.get('/detail/:id',modelController.detail)
   // router.post('/add', adminMiddleware, modelContropller.create)
   // router.put('/:id/edit', modelContropller.update)
   // router.delete('/:id',modelContropller.delete)

module.exports = router;
