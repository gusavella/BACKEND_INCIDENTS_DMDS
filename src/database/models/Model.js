module.exports = (sequelize, dataTypes) => {
    let alias = 'Model';
    let cols = {
        id: {
            type: dataTypes.BIGINT(10).UNSIGNED,
            primaryKey: true,
            autoIncrement: true
        },
        name: {
            type: dataTypes.STRING(50),
            allowNull: false,
            unique: true
            
        },
        id_mark: {
            type: dataTypes.BIGINT(10).UNSIGNED,
            allowNull: false
        },
    };
    let config = {
        tableName:'Model',
        timestamps: true,
        paranoid:   true,
        createdAt: 'create_time',
        updatedAt: 'update_time',
        deletedAt: 'delete_time'
    }
    const Model = sequelize.define(alias, cols, config); 

     Model.associate = function (models) {


        Model.belongsTo(models.Mark, {
            as: "mark",
            foreignKey: "id_mark"
        })
        
        // Model.hasMany(models.LocalModel, {
        //     as: "local_Model",
        //     foreignKey: "id_Model"
        // })

    }
 
    return Model
};