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
    const Section = sequelize.define(alias, cols, config); 

    Section.associate = function(models) {
       
         /*       Section.hasMany(models.Product, {
                    as: "products",
                    foreignKey: "section_id"
                })
                */
    }
 
    return Section
};