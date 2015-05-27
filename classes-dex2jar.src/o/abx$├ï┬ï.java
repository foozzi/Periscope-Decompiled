package o;

class abx$ˋ
  extends ki
{
  private String bxn;
  
  public abx$ˋ(String paramString)
  {
    this.bxn = paramString;
  }
  
  public void ˊ(String paramString1, fw paramfw, String paramString2)
  {
    akk.ᐪ("PsPubnub", "presence successCallback " + paramfw);
    vf.tH().ˣ(new acd(paramfw));
  }
  
  public void ˊ(String paramString, lg paramlg)
  {
    akk.ᐪ("PsPubnub", "presence errorCallback " + paramlg);
  }
  
  public void ˋ(String paramString, fw paramfw) {}
  
  public void ˎ(String paramString, fw paramfw)
  {
    akk.ᐪ("PsPubnub", "presence connectCallback " + paramfw);
    abx.ᵡ(this.bxn);
  }
  
  public void ˏ(String paramString, fw paramfw)
  {
    akk.ᐪ("PsPubnub", "presence reconnectCallback " + paramfw);
  }
  
  public void ᐝ(String paramString, fw paramfw)
  {
    akk.ᐪ("PsPubnub", "presence disconnectCallback " + paramfw);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.abx.Ë
 * JD-Core Version:    0.7.0.1
 */