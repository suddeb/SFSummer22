public class CallInvocableMethodDemo {
    public void callInvocableMethod(){
        Invocable.Action action = Invocable.Action.createCustomAction('apex', 'InvocableDemo');
        List<Invocable.Action.Result> results = action.invoke();     
        System.Debug('Result Size: ' + results.size() + ' isSuccess: ' + results[0].isSuccess());
        if (results.size() > 0 && results[0].isSuccess()) {
            System.debug('Result is: ' + results[0].getOutputParameters().get('output'));
        }
    }
}