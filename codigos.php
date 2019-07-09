Limpiar un formulario
<form id="miForm" action="action_page.php">
    Nombre:<br>
    <input type="text" name="nombre"><br>
    Apellido:<br>
    <input type="text" name="apellido"><br><br>
    <input type="button" onclick="limpiarFormulario()" value="Limpiar formulario">
    <input type="submit" value="Submit">
</form>


<script>
  function limpiarFormulario() {
    document.getElementById("miForm").reset();
  }
</script>