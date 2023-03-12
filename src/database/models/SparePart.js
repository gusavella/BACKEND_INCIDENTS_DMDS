module.exports = (sequelize, dataTypes) => {
    let alias = 'SparePart';
    let cols = {
        id: {
            type: dataTypes.BIGINT(10).UNSIGNED,
            primaryKey: true,
            autoIncrement: true
        },
        // created_at: dataTypes.TIMESTAMP,
        // updated_at: dataTypes.TIMESTAMP,
        name: {
            type: dataTypes.STRING(100),
            allowNull: false,
            unique: true
            
        }
    };
    let config = {
        tableName:'spare_part',
        timestamps: true,
        paranoid:   true,
        createdAt: 'create_time',
        updatedAt: 'update_time',
        deletedAt: 'delete_time'
    }
    const SparePart = sequelize.define(alias, cols, config); 

     SparePart.associate = function (models) {


        SparePart.hasMany(models.RepairSparePart, {
            as: "repair_spare_part",
            foreignKey: "id_spare_part"
        })

    }
 
    return SparePart
};