package ua.kris.forge.validation;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import ua.kris.forge.domain.Order;

@Component
public class OrderValidator implements Validator{
    @Override
    public boolean supports(Class<?> aClass) {
        return Order.class.isAssignableFrom(aClass);
    }

    @Override
    public void validate(Object target, Errors errors) {
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "necksize", "required.necksize", "Neck Size is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "chestsize", "required.chest size", "Chest Size is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "stomachmeasurement", "required.stomachmeasurement", "Stomach Measurement is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "waistsize", "required.waistsize", "Waist Size is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "necktowaist", "required.necktowaist", "Neck-t-Waist is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "sleevemeasurement", "required.sleevemeasurement", "Sleeve Measurement is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "risemeasurement", "required.risemeasurement", "Rise Measurement is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "inseamlength", "required.inseamlength", "Inseam Length is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "thighsize", "required.thighsize", "Thigh Size is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "calfsize", "required.calfsize", "Calf Size is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "orderimg", "required.orderimg", "Image is required.");
    }
}
