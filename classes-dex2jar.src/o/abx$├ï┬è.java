package o;

class abx$ˊ
  extends ki
{
  public void ˊ(String paramString1, fw paramfw, String paramString2)
  {
    akk.ᐪ("PsPubnub", "history successCallback " + paramfw);
  }
  
  public void ˊ(String paramString, lg paramlg)
  {
    super.ˊ(paramString, paramlg);
    akk.ᐪ("PsPubnub", "history errorCallback " + paramlg);
  }
  
  public void ˋ(String paramString, fw paramfw)
  {
    akk.ᐪ("PsPubnub", "history successCallback " + paramfw);
    vf.tH().ˣ(new abu(paramString, paramfw));
  }
  
  public void ˎ(String paramString, fw paramfw)
  {
    akk.ᐪ("PsPubnub", "history connectCallback " + paramfw);
  }
  
  public void ˏ(String paramString, fw paramfw)
  {
    akk.ᐪ("PsPubnub", "history reconnectCallback " + paramfw);
  }
  
  public void ᐝ(String paramString, fw paramfw)
  {
    akk.ᐪ("PsPubnub", "history disconnectCallback " + paramfw);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.abx.Ë
 * JD-Core Version:    0.7.0.1
 */