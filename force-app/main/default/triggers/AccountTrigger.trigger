trigger AccountTrigger on Account (before insert,before update) {
    
    AccountTriggerController.SetAcR(Trigger.new);
}