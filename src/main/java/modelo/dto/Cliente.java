package modelo.dto;

public class Cliente {

	private int codCliente;
	private String dniCif;
	private String nombre;
	private String direccion;
	private String formaPago;
	private String telefono;
	private String contrasena;
	

	// setter and getters
	public String getDniCif() {
		return dniCif;
	}

	public void setDniCif(String dniCif) {
		this.dniCif = dniCif;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getFormaPago() {
		return formaPago;
	}

	public void setFormaPago(String formaPago) {
		this.formaPago = formaPago;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getContrasena() {
		return contrasena;
	}

	public void setContrasena(String contrasena) {
		this.contrasena = contrasena;
	}

	public int getCodCliente() {
		return codCliente;
	}

	public void setCodCliente(int codCliente) {
		this.codCliente = codCliente;
	}

	@Override
	public String toString() {
		return "Cliente [codCliente=" + codCliente + ", dniCif=" + dniCif + ", nombre=" + nombre + ", direccion="
				+ direccion + ", formaPago=" + formaPago + ", telefono=" + telefono + ", contrasena=" + contrasena
				+ "]";
	}

}
