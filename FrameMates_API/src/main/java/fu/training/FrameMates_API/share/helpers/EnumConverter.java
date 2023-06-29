package fu.training.FrameMates_API.share.helpers;

public class EnumConverter {
    public static String convertEnumValueToString(int value, Class<? extends Enum> e){
        for (Enum en : e.getEnumConstants()) {
            if(en.ordinal() == value) return en.toString().toLowerCase();
        }
        return null;
    }

    public static int convertStringToEnumValue(String value, Class<? extends Enum> e){
        for (Enum en : e.getEnumConstants()) {
            if(en.name().equals(value)) return en.ordinal();
        }
        return -1;
    }
}
