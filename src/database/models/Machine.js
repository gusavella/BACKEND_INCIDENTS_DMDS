module.exports = (sequelize, dataTypes) => {
    let alias = 'Machine';
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
        serial: {
            type: dataTypes.STRING(45),
            allowNull: false,
            unique: true
            
        },
        id_model: {
            type: dataTypes.BIGINT(10).UNSIGNED,
            allowNull: false
        },
    };
    let config = {
        tableName:'Machine',
        timestamps: true,
        paranoid:   true,
        createdAt: 'create_time',
        updatedAt: 'update_time',
        deletedAt: 'delete_time'
    }
    const Machine = sequelize.define(alias, cols, config); 

     Machine.associate = function (models) {


        // Machine.belongsTo(models.Department, {
        //     as: "department",
        //     foreignKey: "id_department"
        // })
        
        // Machine.hasMany(models.LocalMachine, {
        //     as: "local_machine",
        //     foreignKey: "id_machine"
        // })

    }
 
    return Machine
};