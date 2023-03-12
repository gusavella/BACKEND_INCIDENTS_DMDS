module.exports = (sequelize, dataTypes) => {
    let alias = 'Repair';
    let cols = {
        id: {
            type: dataTypes.BIGINT(10).UNSIGNED,
            primaryKey: true,
            autoIncrement: true
        },
        id_machine: {
            type: dataTypes.BIGINT(10).UNSIGNED,
            allowNull: false
        },
        id_repair_category: {
            type: dataTypes.BIGINT(10).UNSIGNED,
            allowNull: false
        },
        id_repair_state: {
            type: dataTypes.BIGINT(10).UNSIGNED,
            allowNull: false
        },
    };
    let config = {
        tableName:'Repair',
        timestamps: true,
        paranoid:   true,
        createdAt: 'create_time',
        updatedAt: 'update_time',
        deletedAt: 'delete_time'
    }
    const Repair = sequelize.define(alias, cols, config); 

     Repair.associate = function (models) {


      
        
        Repair.hasMany(models.UserRepair, {
            as: "user_Repair",
            foreignKey: "id_repair"
        })

        Repair.belongsTo(models.RepairCategory, {
            as: "repair_category",
            foreignKey: "id_repair_category"
        })

        Repair.belongsTo(models.RepairState, {
            as: "repair_state",
            foreignKey: "id_repair_state"
        })

        Repair.hasMany(models.RepairSparePart, {
            as: "repair_spare_part",
            foreignKey: "id_repair"
        })

    }
 
    return Repair
};