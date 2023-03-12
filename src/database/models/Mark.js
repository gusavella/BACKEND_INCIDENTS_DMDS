module.exports = (sequelize, dataTypes) => {
    let alias = 'Mark';
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
     
    };
    let config = {
        tableName:'Mark',
        timestamps: true,
        paranoid:   true,
        createdAt: 'create_time',
        updatedAt: 'update_time',
        deletedAt: 'delete_time'
    }
    const Mark = sequelize.define(alias, cols, config); 

     Mark.associate = function (models) {



        
        Mark.hasMany(models.Model, {
            as: "model",
            foreignKey: "id_mark"
        })

    }
 
    return Mark
};