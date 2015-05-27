package o;

import java.util.HashMap;

public class abx
{
  private static HashMap<String, kt> bxh = new HashMap();
  private static String bxi;
  private static String bxj;
  private static String bxk;
  
  static void ī(String paramString)
  {
    try
    {
      ﺫ(paramString).ˋ(paramString, new abx.ˋ(paramString));
      return;
    }
    catch (lh paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  public static void ʼ(String paramString1, String paramString2, String paramString3)
  {
    bxi = paramString1;
    bxj = paramString2;
    bxk = paramString3;
  }
  
  public static void ˊ(String paramString1, String paramString2, acu paramacu, boolean paramBoolean, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, int paramInt)
  {
    ᕀ(paramString1, paramString2);
    paramString2 = "SE-a-" + paramString3;
    ᵕ(paramString1, paramString2);
    ι(paramString1, 30);
    fz localfz = new fz();
    localfz.ʿ("username", paramString4);
    localfz.ʿ("display_name", paramString5);
    localfz.ʿ("id", paramString3);
    localfz.ʿ("initials", paramString6);
    localfz.ˊ("participant_index", Integer.valueOf(paramInt));
    localfz.ʿ("pub_nub_profile_image", paramString7);
    ﺫ(paramString1).ˊ(paramString1, paramString2, localfz, new aby(paramString1, paramacu, paramBoolean));
  }
  
  static void ˊ(String paramString, acu paramacu, boolean paramBoolean)
  {
    kt localkt = ﺫ(paramString);
    try
    {
      localkt.ˊ(paramString, new abx.ˏ(paramacu, paramBoolean));
      return;
    }
    catch (lh paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  private static void ˊ(String paramString, fz paramfz)
  {
    ﺫ(paramString).ˊ(paramString, paramfz, new abx.ˎ());
  }
  
  public static void ˋ(String paramString, ant paramant)
  {
    String str = paramant.Cg();
    akk.ᐪ("PsPubnub", "Signing " + paramant.Cf());
    adb.sign(new ada(paramString, paramant), new abz(str));
  }
  
  public static void ˎ(String paramString, long paramLong)
  {
    ﺫ(paramString).ˊ(paramString, paramLong, -1L, 100, true, true, new abx.ˊ(null));
  }
  
  private static kt ᕀ(String paramString1, String paramString2)
  {
    kt localkt = new kt(bxi, bxj, bxk, "", false);
    localkt.ʵ(paramString2);
    bxh.put(paramString1, localkt);
    return localkt;
  }
  
  static void ᵕ(String paramString1, String paramString2)
  {
    ﺫ(paramString1).ˀ(paramString2);
  }
  
  public static void ᵡ(String paramString)
  {
    ﺫ(paramString).ˊ(paramString, true, true, new if(null));
  }
  
  static void ι(String paramString, int paramInt)
  {
    ﺫ(paramString).ṛ(paramInt);
  }
  
  private static kt ﺫ(String paramString)
  {
    paramString = (kt)bxh.get(paramString);
    if (paramString == null) {
      throw new IllegalStateException("Channel not initialized. Did you call init()?");
    }
    return paramString;
  }
  
  public static void ﻴ(String paramString)
  {
    if (anw.isEmpty(paramString)) {
      return;
    }
    akk.ᐪ("PsPubnub", "Leaving channel " + paramString);
    ﺫ(paramString).ʸ(paramString);
    ﺫ(paramString).unsubscribe(paramString);
  }
  
  static class if
    extends ki
  {
    public void ˊ(String paramString1, fw paramfw, String paramString2) {}
    
    public void ˊ(String paramString, lg paramlg)
    {
      akk.ᐪ("PsPubnub", "hereNow errorCallback " + paramlg);
    }
    
    public void ˋ(String paramString, fw paramfw)
    {
      akk.ᐪ("PsPubnub", "hereNow successCallback " + paramfw);
      vf.tH().ˣ(new acd(paramfw));
    }
    
    public void ˎ(String paramString, fw paramfw)
    {
      akk.ᐪ("PsPubnub", "hereNow connectCallback " + paramfw);
    }
    
    public void ˏ(String paramString, fw paramfw)
    {
      akk.ᐪ("PsPubnub", "hereNow reconnectCallback " + paramfw);
    }
    
    public void ᐝ(String paramString, fw paramfw)
    {
      akk.ᐪ("PsPubnub", "hereNow disconnectCallback " + paramfw);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.abx
 * JD-Core Version:    0.7.0.1
 */