package hibernate;

import java.sql.Date;

public class Articulo {

	public Articulo() {}
	
	
	int id;
	String Titulo;
	String Texto;
	String Autor;
	Date Fecha;
	String Url;
	String Imagen;
	String Content;
	String ogContent;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitulo() {
		return Titulo;
	}
	public void setTitulo(String titulo) {
		Titulo = titulo;
	}
	public String getTexto() {
		return Texto;
	}
	public void setTexto(String texto) {
		Texto = texto;
	}
	public String getAutor() {
		return Autor;
	}
	public void setAutor(String autor) {
		Autor = autor;
	}
	public Date getFecha() {
		return Fecha;
	}
	public void setFecha(Date fecha) {
		Fecha = fecha;
	}
	public String getUrl() {
		return Url;
	}
	public void setUrl(String url) {
		Url = url;
	}
	public String getImagen() {
		return Imagen;
	}
	public void setImagen(String imagen) {
		Imagen = imagen;
	}
	public String getContent() {
		return Content;
	}
	public void setContent(String content) {
		Content = content;
	}
	public String getOgContent() {
		return ogContent;
	}
	public void setOgContent(String ogContent) {
		this.ogContent = ogContent;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((Autor == null) ? 0 : Autor.hashCode());
		result = prime * result + ((Content == null) ? 0 : Content.hashCode());
		result = prime * result + ((Fecha == null) ? 0 : Fecha.hashCode());
		result = prime * result + ((Imagen == null) ? 0 : Imagen.hashCode());
		result = prime * result + ((Texto == null) ? 0 : Texto.hashCode());
		result = prime * result + ((Titulo == null) ? 0 : Titulo.hashCode());
		result = prime * result + ((Url == null) ? 0 : Url.hashCode());
		result = prime * result + id;
		result = prime * result
				+ ((ogContent == null) ? 0 : ogContent.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Articulo other = (Articulo) obj;
		if (Autor == null) {
			if (other.Autor != null)
				return false;
		} else if (!Autor.equals(other.Autor))
			return false;
		if (Content == null) {
			if (other.Content != null)
				return false;
		} else if (!Content.equals(other.Content))
			return false;
		if (Fecha == null) {
			if (other.Fecha != null)
				return false;
		} else if (!Fecha.equals(other.Fecha))
			return false;
		if (Imagen == null) {
			if (other.Imagen != null)
				return false;
		} else if (!Imagen.equals(other.Imagen))
			return false;
		if (Texto == null) {
			if (other.Texto != null)
				return false;
		} else if (!Texto.equals(other.Texto))
			return false;
		if (Titulo == null) {
			if (other.Titulo != null)
				return false;
		} else if (!Titulo.equals(other.Titulo))
			return false;
		if (Url == null) {
			if (other.Url != null)
				return false;
		} else if (!Url.equals(other.Url))
			return false;
		if (id != other.id)
			return false;
		if (ogContent == null) {
			if (other.ogContent != null)
				return false;
		} else if (!ogContent.equals(other.ogContent))
			return false;
		return true;
	}
	
	
}
