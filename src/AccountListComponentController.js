({
    doInit : function(component, event, helper) {
        var action = component.get("c.getAccounts");
        action.setCallback(this, function(data) {
            component.set("v.accounts", data.getReturnValue());
        });
        $A.enqueueAction(action);
    }
})