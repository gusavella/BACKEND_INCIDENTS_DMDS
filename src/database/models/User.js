module.exports = (sequelize, dataTypes) => {
    let alias = 'User';
    let cols = {
        id: {
            type: dataTypes.BIGINT(10).UNSIGNED,
            primaryKey: true,
            autoIncrement: true
        },

        names: {
            type: dataTypes.STRING(200),
            allowNull: false
        },
        surnames: {
            type: dataTypes.STRING(200),
            allowNull: false
        },
        email: {
            type: dataTypes.STRING(200),
            unique:true,
            allowNull: false
        },
        password: {
            type: dataTypes.STRING(200),
            allowNull: false
        },
        phone: {
            type: dataTypes.STRING(200),
            allowNull: false
        },  
        id_role:  {
            type: dataTypes.BIGINT(10).UNSIGNED,
            allowNull: false
        },

    };
    let config = {
        tableName:'user',
        timestamps: true,
        paranoid:   true,
        createdAt: 'create_time',
        updatedAt: 'update_time',
        deletedAt: 'delete_time'
    }
    const User = sequelize.define(alias, cols, config); 

    User.associate = function(models) {
       
        User.belongsTo(models.Role, {
            as: "role",
            foreignKey: "id_role"
        })


        User.hasMany(models.UserLocal, {
            as: "user_local",
            foreignKey: "id_user"
        })
        User.hasMany(models.UserRepair, {
            as: "user_repair",
            foreignKey: "id_user"
        })
}
 
    return User
};