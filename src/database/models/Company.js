module.exports = (sequelize, dataTypes) => {
    let alias = 'Company';
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
        tableName:'Company',
        timestamps: true,
        paranoid:   true,
        createdAt: 'create_time',
        updatedAt: 'update_time',
        deletedAt: 'delete_time'
    }
    const Company = sequelize.define(alias, cols, config); 

     Company.associate = function (Models) {

        
        Company.hasMany(Models.Local, {
            as: "company",
            foreignKey: "id_Company"
        })

    }
 
    return Company
};