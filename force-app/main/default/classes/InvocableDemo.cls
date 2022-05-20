public class InvocableDemo {
    @InvocableMethod(label='Get Message')
    public static List<String> getMessage() {
        List<String> returnValue = new List<String>();
        returnValue.add('Hello World');
        return returnValue;
    }
}