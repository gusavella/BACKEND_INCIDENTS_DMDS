module.exports = (sequelize, dataTypes) => {
    let alias = 'UserRepair';
    let cols = {
        id: {
            type: dataTypes.BIGINT(10).UNSIGNED,
            primaryKey: true,
            autoIncrement: true
        },
        observation: {
            type: dataTypes.STRING(100),
            allowNull: false,
            unique: true
            
        },
        id_repair: {
            type: dataTypes.BIGINT(10).UNSIGNED,
            allowNull: false
        },
        id_user: {
            type: dataTypes.BIGINT(10).UNSIGNED,
            allowNull: false
        },
       
    };
    let config = {
        tableName:'user_repair',
        timestamps: true,
        paranoid:   true,
        createdAt: 'create_time',
        updatedAt: 'update_time',
        deletedAt: 'delete_time'
    }
    const UserRepair = sequelize.define(alias, cols, config); 

    UserRepair.associate = function (models) {


            UserRepair.belongsTo(models.User, {
                as: "user",
                foreignKey: "id_user"
            })

            UserRepair.belongsTo(models.Repair, {
                as: "repair",
                foreignKey: "id_repair"
            })
       

   }
 
    return UserRepair
};