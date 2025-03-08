package prueba;

public class Circle implements IFiguraGeometrica {
	private int x;
	private int y;
	private double radio;

	// constructor
	public Circle(int valorX, int valorY, double valorRadio) {
		x = valorX;
		y = valorY;
		setRadio(valorRadio);
	}

	public int getX() {
		return x;
	}

	public void setX(int x) {
		this.x = x;
	}

	public int getY() {
		return y;
	}

	public void setY(int y) {
		this.y = y;
	}

	public double getRadio() {
		return radio;
	}

	public void setRadio(double valorRadio) {
		 double cero=0.0;
			radio = (valorRadio < cero ? cero : valorRadio);
	}

	public double getDiametro() {
		return 2 * radio;
	}

	public double getCircunferencia() {
		return Math.PI * getDiametro();
	}

	public double getArea() {
		return Math.PI * radio * radio;
	}

	@Override
	public String toString() {
		return "Centro = [" + x + ", " + y + "]; Radio = " + radio;
	}
	

}
