package fu.training.FrameMates_API.share.helpers;

import fu.training.FrameMates_API.share.exceptions.InvalidStatusStringException;

import java.util.Arrays;

public class EnumConverter {
    public static String convertEnumValueToString(int value, Class<? extends Enum> e){
        for (Enum en : e.getEnumConstants()) {
            if(en.ordinal() == value) return en.toString().toLowerCase();
        }
        return null;
    }

    public static int convertStringToEnumValue(String value, Class<? extends Enum> e) throws InvalidStatusStringException {
        for (Enum en : e.getEnumConstants()) {
            if(en.name().toLowerCase().equals(value)) return en.ordinal();
        }
        throw new InvalidStatusStringException(
                "Invalid " +
                Arrays.stream(e.getEnumConstants())
                        .findFirst().get()
                        .getClass().getSimpleName().toLowerCase()
                        .replace("status", " status")
        );
    }
}
