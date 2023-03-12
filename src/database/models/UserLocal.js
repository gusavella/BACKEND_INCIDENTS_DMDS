module.exports = (sequelize, dataTypes) => {
    let alias = 'UserLocal';
    let cols = {
        id: {
            type: dataTypes.BIGINT(10).UNSIGNED,
            primaryKey: true,
            autoIncrement: true
        },
      
        id_local: {
            type: dataTypes.BIGINT(10).UNSIGNED,
            allowNull: false
        },
        id_user: {
            type: dataTypes.BIGINT(10).UNSIGNED,
            allowNull: false
        },
       
    };
    let config = {
        tableName:'user_local',
        timestamps: true,
        paranoid:   true,
        createdAt: 'create_time',
        updatedAt: 'update_time',
        deletedAt: 'delete_time'
    }
    const UserLocal = sequelize.define(alias, cols, config); 

    UserLocal.associate = function (models) {


            UserLocal.belongsTo(models.User, {
                as: "user",
                foreignKey: "id_user"
            })

            UserLocal.belongsTo(models.Local, {
                as: "local",
                foreignKey: "id_local"
            })
       

   }
 
    return UserLocal
};