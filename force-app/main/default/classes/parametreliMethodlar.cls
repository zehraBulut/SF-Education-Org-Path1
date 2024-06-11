public class parametreliMethodlar {
    public void dersSonucu() {
    string ad= 'Emre';
    string ders=' math';
    integer note= 90;
    Boolean isPass = True;
    //Emre math dersi snavindan 90 notunu aldi.Basarı durumu :True
    system.debug(ad + ders +' dersi snavindan '+ note +'notunu aldi.Basari durumu:'+ isPass);
    }

public void dersDurumu(string isim,string ders,integer note,Boolean isPass){
    system.debug(isim + ders +' dersi snavindan '+ note +' notunu aldi.Basari durumu:'+ isPass);
string name =isim;
string lesson=ders;
integer myNot=note;
Boolean x=isPass;
system.debug(name + lesson +' dersi snavindan '+ myNot +' notunu aldi.Basari durumu:'+ x);

}


}