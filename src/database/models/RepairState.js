module.exports = (sequelize, dataTypes) => {
    let alias = 'RepairState';
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
            
        }
    };
    let config = {
        tableName:'repair_state',
        timestamps: true,
        paranoid:   true,
        createdAt: 'create_time',
        updatedAt: 'update_time',
        deletedAt: 'delete_time'
    }
    const RepairState = sequelize.define(alias, cols, config); 

     RepairState.associate = function (models) {


        // RepairState.belongsTo(models.Model, {
        //     as: "model",
        //     foreignKey: "id_model"
        // })
        
        RepairState.hasMany(models.Repair, {
            as: "repair",
            foreignKey: "id_repair_state"
        })

    }
 
    return RepairState
};