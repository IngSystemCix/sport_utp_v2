function limitInput(event) {
    const input = event.target;
    let value = input.value.toUpperCase();
    
    if (value.length > 9) {
        value = value.slice(0, 9);
    }
    
    // Corrección: Usar '^U\d*$' para asegurar solo una 'U' al principio
    if (!/^U\d*$/.test(value)) {
        // Corrección: Eliminar todas las 'U' adicionales
        value = value.replace(/[^U\d]|^(U.*)U/g, '$1');
    }
    
    input.value = value;
}
