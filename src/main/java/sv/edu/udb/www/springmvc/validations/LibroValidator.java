package sv.edu.udb.www.springmvc.validations;


import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import sv.edu.udb.www.springmvc.entities.LibrosEntity;


public class LibroValidator implements Validator{
    @Override
    public boolean supports(Class clazz) {
        return LibrosEntity.class.equals(clazz); // clase del bean al que da soporte este validador
    }
    @Override
    public void validate(Object target, Errors errors) {

        LibrosEntity libro = (LibrosEntity) target;
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "codigoLibro",
                "field.codigoLibro.required","El código es requeriod");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "nombreLibro",
                "field.nombreLibro.required","El nombre es requeriod");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "existencias",
                "field.cantidadLibro.required","Las existencias son requeriod");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "precio",
                "field.precioLibro.required","El precio es requeriod");

    }
}
