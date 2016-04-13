package ua.kris.forge.validation;


import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import ua.kris.forge.domain.BodyArmor;

@Component
public class ArmorValidator implements Validator{
    @Override
    public boolean supports(Class<?> aClass) {
        return BodyArmor.class.isAssignableFrom(aClass);
    }

    @Override
    public void validate(Object target, Errors errors) {
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "required.name", "Name is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "description", "required.description", "Description is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "price", "required.price", "Price is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "size", "required.size", "Size is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "img", "required.img", "Image is required.");
    }
}
