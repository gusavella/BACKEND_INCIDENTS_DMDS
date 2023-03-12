module.exports = (sequelize, dataTypes) => {
    let alias = 'RepairSparePart';
    let cols = {
        id: {
            type: dataTypes.BIGINT(10).UNSIGNED,
            primaryKey: true,
            autoIncrement: true
        },
        quantity: {
            type: dataTypes.INTEGER,
            allowNull: false,
            unique: true
            
        },
        id_repair: {
            type: dataTypes.BIGINT(10).UNSIGNED,
            allowNull: false
        },
        id_spare_part: {
            type: dataTypes.BIGINT(10).UNSIGNED,
            allowNull: false
        },
       
    };
    let config = {
        tableName:'repair_spare_part',
        timestamps: true,
        paranoid:   true,
        createdAt: 'create_time',
        updatedAt: 'update_time',
        deletedAt: 'delete_time'
    }
    const RepairSparePart = sequelize.define(alias, cols, config); 

    RepairSparePart.associate = function (models) {


            RepairSparePart.belongsTo(models.Repair, {
                as: "repair",
                foreignKey: "id_repair"
            })

            RepairSparePart.belongsTo(models.SparePart, {
                as: "spare_part",
                foreignKey: "id_spare_part"
            })
       

   }
 
    return RepairSparePart
};