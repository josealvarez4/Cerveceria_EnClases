var pool = require('./bd');

// Listar Novedades
async function getNovedades() {
    var query = 'select * from novedades order by novedades.id asc';
    var rows = await pool.query(query);
    return rows;
}

// Borrar Novedades
async function deleteNovedadById(id) {
    var query = 'delete from novedades where id = ?';
    var rows = await pool.query(query, [id]);
    return rows;
}

// Agregar Novedades
async function insertNovedad(obj) {
    try {
        var query = "insert into novedades set ? ";
        var rows = await pool.query(query, [obj]);
        return rows;
    } catch (error) {
        console.log(error);
        throw error;
    }
}

// Seleccionar Novedad
async function getNovedadById(id) {
    var query = 'select * from novedades where id = ?';
    var rows = await pool.query(query, [id]);
    return rows[0];
}

// Modificar Novedad
async function modificarNovedadById(obj, id) {
    try {
        var query = "update novedades set ? where id=?";
        var rows = await pool.query(query, [obj, id]);
        return rows;
    } catch (error) {
        throw error;
    }
}

// Buscar Novedades
async function buscarNovedades (busqueda) {
    var query = "select * from novedades where titulo like ? OR subtitulo like ? OR cuerpo like ? ";

    var rows = await pool.query(query, ['%' + busqueda + '%', '%' + busqueda + '%', '%' + busqueda + '%']);

    return rows;
}

module.exports = { getNovedades, deleteNovedadById, insertNovedad, getNovedadById, modificarNovedadById, buscarNovedades }
