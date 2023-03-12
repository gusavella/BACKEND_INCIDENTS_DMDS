module.exports = (sequelize, dataTypes) => {
    let alias = 'City';
    let cols = {
        id: {
            type: dataTypes.BIGINT(10).UNSIGNED,
            primaryKey: true,
            autoIncrement: true
        },
        name: {
            type: dataTypes.STRING(100),
            allowNull: false,
            unique: true
            
        },
        id_department:  {
            type: dataTypes.BIGINT(10).UNSIGNED,
            allowNull: false
        },
    };
    let config = {
        tableName:'city',
        timestamps: true,
        paranoid:   true,
        createdAt: 'create_time',
        updatedAt: 'update_time',
        deletedAt: 'delete_time'
    }
    const City = sequelize.define(alias, cols, config); 

     City.associate = function (models) {


        City.belongsTo(models.Department, {
            as: "department",
            foreignKey: "id_department"
        })
        
        City.hasMany(models.Local, {
            as: "locals",
            foreignKey: "id_city"
        })

    }
 
    return City
};