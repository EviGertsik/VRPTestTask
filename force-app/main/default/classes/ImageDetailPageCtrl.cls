public with sharing class ImageDetailPageCtrl {
    public List<ImageDetail__c> images {
        get {
            images = [select id,name,Description__c,Extension__c,Link__c,Active__c from ImageDetail__c];
            return images;
        }
        set;

    }
    
    public void deleteInactiveRecords() {
        ImageDetail__c tobeDeleted = null;
        for (ImageDetail__c i : [SELECT Id,active__c FROM ImageDetail__C WHERE Active__c = FALSE]) {
            tobeDeleted = i;
            break;
        }
        if (tobeDeleted != null) {
            Delete tobeDeleted;
             
        }
        // else if(images.active__c == null){
        //     ApexPages.addmessage(new ApexPages.message(ApexPages.severity.WARNING,'Please enter Account phone'));
            
        // }
        
         
    }
    public ImageDetail__c img {get;set;}
        public ImageDetailPageCtrl(){
            img = new ImageDetail__c();
        }
    public void store(){
        try{
            insert img;
        }catch(DmlException e){
            
        }
    }    
    // public Pagereference toCheck(){
    //     List <ImageDetail__c> forCheck = [select id from ImageDetail__c WHERE Active__c = FALSE];
    //     if(forCheck == null){
    //         ApexPages.addmessage(new ApexPages.message(ApexPages.severity.WARNING,'Please enter Account phone'));
    //     }
    //     return null;
    // }
    

}