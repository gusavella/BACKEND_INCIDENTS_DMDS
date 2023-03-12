module.exports = (sequelize, dataTypes) => {
    let alias = 'local_machine';
    let cols = {
        id: {
            type: dataTypes.BIGINT(10).UNSIGNED,
            primaryKey: true,
            autoIncrement: true
        },
      
        id_local: {
            type: dataTypes.BIGINT(10).UNSIGNED,
            allowNull: false
        },
        id_machine: {
            type: dataTypes.BIGINT(10).UNSIGNED,
            allowNull: false
        },
       
    };
    let config = {
        tableName:'local_machine',
        timestamps: true,
        paranoid:   true,
        createdAt: 'create_time',
        updatedAt: 'update_time',
        deletedAt: 'delete_time'
    }
    const LocalMachine = sequelize.define(alias, cols, config); 

    LocalMachine.associate = function (models) {


            LocalMachine.belongsTo(models.Local, {
                as: "local",
                foreignKey: "id_local"
            })

            LocalMachine.belongsTo(models.Machine, {
                as: "machine",
                foreignKey: "id_machine"
            })
       

   }
 
    return LocalMachine
};