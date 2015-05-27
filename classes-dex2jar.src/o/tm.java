package o;

import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

class tm
  extends py
  implements ty
{
  public tm(pq parampq, String paramString1, String paramString2, sq paramsq)
  {
    this(parampq, paramString1, paramString2, paramsq, sm.XO);
  }
  
  tm(pq parampq, String paramString1, String paramString2, sq paramsq, sm paramsm)
  {
    super(parampq, paramString1, paramString2, paramsq, paramsm);
  }
  
  private sn ˊ(sn paramsn, tx paramtx)
  {
    return paramsn.ՙ("X-CRASHLYTICS-API-KEY", paramtx.apiKey).ՙ("X-CRASHLYTICS-API-CLIENT-TYPE", "android").ՙ("X-CRASHLYTICS-D", paramtx.Zy).ՙ("X-CRASHLYTICS-API-CLIENT-VERSION", this.Rw.getVersion()).ՙ("Accept", "application/json");
  }
  
  private Map<String, String> ˋ(tx paramtx)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("build_version", paramtx.qp);
    localHashMap.put("display_version", paramtx.qo);
    localHashMap.put("source", Integer.toString(paramtx.YC));
    if (paramtx.Zz != null) {
      localHashMap.put("icon_hash", paramtx.Zz);
    }
    paramtx = paramtx.qq;
    if (!qh.ՙ(paramtx)) {
      localHashMap.put("instance", paramtx);
    }
    return localHashMap;
  }
  
  private JSONObject ﯩ(String paramString)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject(paramString);
      return localJSONObject;
    }
    catch (Exception localException)
    {
      pj.cd().ˊ("Fabric", "Failed to parse settings JSON from " + getUrl(), localException);
      pj.cd().ˑ("Fabric", "Settings response " + paramString);
    }
    return null;
  }
  
  public JSONObject ˊ(tx paramtx)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    try
    {
      Map localMap = ˋ(paramtx);
      localObject1 = localObject2;
      localObject2 = ˊ(localMap);
      localObject1 = localObject2;
      paramtx = ˊ((sn)localObject2, paramtx);
      localObject1 = paramtx;
      pj.cd().ˑ("Fabric", "Requesting settings from " + getUrl());
      localObject1 = paramtx;
      pj.cd().ˑ("Fabric", "Settings query params were: " + localMap);
      localObject1 = paramtx;
      localObject2 = ˋ(paramtx);
      if (paramtx != null)
      {
        pj.cd().ˑ("Fabric", "Settings request ID: " + paramtx.header("X-REQUEST-ID"));
        return localObject2;
      }
    }
    finally
    {
      if (localObject1 != null) {
        pj.cd().ˑ("Fabric", "Settings request ID: " + ((sn)localObject1).header("X-REQUEST-ID"));
      }
    }
    return localObject2;
  }
  
  JSONObject ˋ(sn paramsn)
  {
    int i = paramsn.code();
    pj.cd().ˑ("Fabric", "Settings result was: " + i);
    if (ﺋ(i)) {
      return ﯩ(paramsn.du());
    }
    pj.cd().ᐨ("Fabric", "Failed to retrieve settings from " + getUrl());
    return null;
  }
  
  boolean ﺋ(int paramInt)
  {
    return (paramInt == 200) || (paramInt == 201) || (paramInt == 202) || (paramInt == 203);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.tm
 * JD-Core Version:    0.7.0.1
 */