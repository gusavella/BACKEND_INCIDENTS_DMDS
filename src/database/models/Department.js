module.exports = (sequelize, dataTypes) => {
    let alias = 'Department';
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
        tableName:'department',
        timestamps: true,
        paranoid:   true,
        createdAt: 'create_time',
        updatedAt: 'update_time',
        deletedAt: 'delete_time'
    }
    const Department= sequelize.define(alias, cols, config); 

    Department.associate = function (models) {


        Department.hasMany(models.City, {
            as: "city",
            foreignKey: "id_department"
        })

    }
 
    return Department
};