module.exports = (sequelize, dataTypes) => {
    let alias = 'RepairCategory';
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
        tableName:'repair_category',
        timestamps: true,
        paranoid:   true,
        createdAt: 'create_time',
        updatedAt: 'update_time',
        deletedAt: 'delete_time'
    }
    const RepairCategory = sequelize.define(alias, cols, config); 

     RepairCategory.associate = function (models) {


        // RepairCategory.belongsTo(models.Model, {
        //     as: "model",
        //     foreignKey: "id_model"
        // })
        
        RepairCategory.hasMany(models.Repair, {
            as: "repair",
            foreignKey: "id_repair_category"
        })

    }
 
    return RepairCategory
};