package o;

class abx$ˏ
  extends ki
{
  private final acu bxo;
  private final boolean bxp;
  
  public abx$ˏ(acu paramacu, boolean paramBoolean)
  {
    this.bxo = paramacu;
    this.bxp = paramBoolean;
  }
  
  private boolean ˊ(fz paramfz)
  {
    try
    {
      boolean bool = this.bxo.ˊ(new ach(paramfz.r()));
      return bool;
    }
    catch (acv localacv)
    {
      akk.ˏ("PsPubnub", "Couldn't verify " + paramfz, localacv);
    }
    return false;
  }
  
  private boolean ͺ(ant paramant)
  {
    return paramant.Cf() != anu.bNY;
  }
  
  public void ˊ(String paramString1, fw paramfw, String paramString2) {}
  
  public void ˊ(String paramString, lg paramlg)
  {
    super.ˊ(paramString, paramlg);
    akk.ᐪ("PsPubnub", "subscribe errorCallback: " + paramlg);
  }
  
  public void ˋ(String paramString, fw paramfw)
  {
    akk.ᐪ("PsPubnub", "subscribe successCallback: " + paramString + paramfw);
    if (!paramfw.o())
    {
      akk.ᐨ("PsPubnub", "Received non-JSON object: " + paramfw);
      return;
    }
    acb localacb = new acb(paramString, paramfw, 0L);
    if ((this.bxo != null) && ((this.bxp) || (localacb.bxr.Cf().bOl)) && (ͺ(localacb.bxr)))
    {
      if (!ˊ(paramfw.r()))
      {
        akk.ᐧ("PsPubnub", "Unverified message received: " + paramfw);
        return;
      }
      if (!paramString.equals(localacb.bxr.Cg()))
      {
        akk.ᐧ("PsPubnub", "Message received for different channel: " + paramfw);
        return;
      }
    }
    vf.tH().ˣ(localacb);
  }
  
  public void ˎ(String paramString, fw paramfw)
  {
    akk.ᐪ("PsPubnub", "subscribe connectCallback: " + paramString + paramfw);
    vf.tH().ˣ(new acc());
    abx.ᵡ(paramString);
  }
  
  public void ˏ(String paramString, fw paramfw)
  {
    akk.ᐪ("PsPubnub", "subscribe reconnectCallback: " + paramString + paramfw);
    vf.tH().ˣ(new ace());
  }
  
  public void ᐝ(String paramString, fw paramfw)
  {
    akk.ᐪ("PsPubnub", "subscribe disconnectCallback: " + paramString + paramfw);
    vf.tH().ˣ(new aca());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.abx.Ë
 * JD-Core Version:    0.7.0.1
 */