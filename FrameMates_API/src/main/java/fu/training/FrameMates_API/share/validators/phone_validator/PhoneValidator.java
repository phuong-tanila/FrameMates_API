package fu.training.FrameMates_API.share.validators.phone_validator;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

public class PhoneValidator implements ConstraintValidator<Phone, String> {
    private String regexp;
    @Override
    public void initialize(Phone constraintAnnotation) {
        regexp = constraintAnnotation.regexp();
        ConstraintValidator.super.initialize(constraintAnnotation);
    }

    @Override
    public boolean isValid(String value, ConstraintValidatorContext context) {
        if (value == null) {
            return false; // Null values are considered valid
        }
        return value.matches(regexp);
    }
}
