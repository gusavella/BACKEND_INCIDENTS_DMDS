module.exports = (sequelize, dataTypes) => {
    let alias = 'Local';
    let cols = {
        id: {
            type: dataTypes.BIGINT(10).UNSIGNED,
            primaryKey: true,
            autoIncrement: true
        },

        name: {
            type: dataTypes.STRING(100),
            allowNull: false
        },
        id_city: {
            type: dataTypes.BIGINT(10).UNSIGNED,
            allowNull: false
        },
        id_company: {
            type: dataTypes.BIGINT(10).UNSIGNED,
            allowNull: false
        }
    };
    let config = {
        tableName:'local',
        timestamps: true,
        paranoid:   true,
        createdAt: 'create_time',
        updatedAt: 'update_time',
        deletedAt: 'delete_time'
    }
    const Local = sequelize.define(alias, cols, config); 

    Local.associate = function(models) {
       
        Local.belongsTo(models.City, {
                as: "city",
                foreignKey: "id_city"
            })

 
        Local.hasMany(models.UserLocal, {
            as: "user_local",
            foreignKey: "id_user"
        })

        Local.belongsTo(models.Company, {
            as: "company",
            foreignKey: "id_company"
        })
    }
    
    return Local
};