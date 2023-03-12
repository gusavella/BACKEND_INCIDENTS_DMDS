const fs = require("fs");
const path = require("path");
const bcrypt= require("bcryptjs")
const {	validationResult} = require('express-validator');

const db = require('../database/models');
const sequelize = db.sequelize;




const controller = {
    all: async (req, res) => {
      try{
        let marks= await db.Mark.findAll()
        res.json(marks);
      }
      catch(e){
        console.log(e)
      }
      
    },
    detail: async (req, res) => {
         
          try{
            let mark= await db.Mark.findByPk(req.params.id)
            res.json(mark);
          }
          catch(e){
            console.log(e)
          }
    },
    login: (req, res) => {
      // console.log('cookies:',req.cookies)
      res.render("users/login.ejs",{tittle:'Login'});
    },
    loginProcess: (req,res) => {
      // console.log(req.body)
      const resultValidation = validationResult(req);

		if (resultValidation.errors.length > 0) {
			return res.render('users/login.ejs', {tittle:'Login',
				errors: resultValidation.mapped(),
				oldData: req.body
			});
		}
      db.User.findOne({
        where:{
          email:req.body.email
        }
      },{include: ["role"]})
      .then(function(userToLogin){
        if(userToLogin){
        let isOkPassword = bcrypt.compareSync(req.body.password,userToLogin.password)
        if(isOkPassword){
          delete userToLogin.password
          req.session.userLogged=userToLogin
          if(req.body.rememberCheck){
            res.cookie('userEmail',`${userToLogin.email}`,{maxAge:1000*60*10})
          }
         
          // console.log(req.session)
            return res.redirect(`/users/detail/${userToLogin.id}`)
        }
        return res.render('users/login.ejs',{ tittle:'Login',
                                  errors:{
                                    password:{
                                      msg:'Credenciales invalidas - password'
                                    }
                                  }
                  })
      }

      return res.render('users/login.ejs',{ tittle:'Login',
                                  errors:{
                                    email:{
                                      msg:'Credenciales invalidas - email '
                                    }
                                  }
                  })
      })
      

    },
    logout: (req,res) => {
      res.clearCookie('userEmail')
      req.session.destroy()
      return res.redirect('/')
    },
    register : (req, res) => {
      res.render ("users/register.ejs",{tittle:'Register'});
    },
    processRegister : (req, res) => {
      const resultValidationRegister = validationResult(req);
      if (resultValidationRegister.errors.length > 0){
        return res.render('users/register.ejs', { tittle: 'Registro',
          errors: resultValidationRegister.mapped(),
          oldData: req.body
        })}
        db.User.findOne({
          where:{
            email:req.body.email
          }
        })
        .then(function(userToRegister){
          if(userToRegister){
            return res.render('users/register.ejs', { tittle: 'Registro', 
            errors: {
              email: {
                msg: 'Este email ya esta en uso'
              }
            }, oldData: req.body})
          } else {
            db.User.create({
              names: req.body.names,
              surnames: req.body.surnames,
              email:req.body.email,
              password: bcrypt.hashSync(req.body.password,10),
              address:req.body.address,
              phone:req.body.phone,
              image: req.file?'/images/users/'+ req.file.filename:'/images/defaultImage.png',
              role_id:2
            })
            .then(function(user){
              res.render("users/login.ejs", { tittle: "Login",user:user });
            })
          }
        })
    },
    edit: (req,res) =>{
      db.User.findByPk(req.params.id)
      .then(function(oldData){
        res.render("users/userEdit.ejs", { tittle: "Editar Usuario" , oldData:oldData})
      })
      
    },
    update: (req,res) =>{
    // console.log('Body:',req.body)
    // res.json(req.body)
    // let userOld = await  db.User.findByPk(req.params.id)
    // console.log('old:',userOld)

      db.User.update({
                    names : req.body.names,
                 surnames : req.body.surnames,
                 password : bcrypt.hashSync(req.body.password,10),
                    email : req.body.email,
                  address : req.body.address,
                    phone : req.body.phone,
                    image : req.file?'/images/users/'+ req.file.filename:'/images/defaultImage.png'},
                    {
                    where : {
                            id : req.params.id
                            }
                    })
      .then(function(user){
        // console.log(user)
        res.redirect(`/users/detail/${req.params.id}`);
      })
    },
    delete: (req,res) =>{
      db.User.destroy({
        where:{
          id:req.params.id
        }
      })
      .then(function(){
        res.redirect("/")
      })
      
    },
    profile: (req, res) => {
      res.render('users/userDetail', {tittle:'Games Hub'})
    }
    ,
    panel:(req,res)=>{
      res.render('users/adminPanel', {tittle:'Panel'})
    }
};

module.exports = controller;
