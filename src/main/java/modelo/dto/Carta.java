package modelo.dto;

public class Carta extends Envio {

	private boolean mensual;
	private int cod_mensual;

	// setter and getters

	public boolean isMensual() {
		return mensual;
	}

	public void setMensual(boolean mensual) {
		this.mensual = mensual;
	}

}
