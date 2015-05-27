package o;

import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

class ｖ
  extends py
{
  private final ｴ qm;
  
  public ｖ(pq parampq, String paramString1, String paramString2, sq paramsq, ｴ paramｴ)
  {
    super(parampq, paramString1, paramString2, paramsq, sm.XO);
    this.qm = paramｴ;
  }
  
  private Map<String, String> ˊ(ｉ paramｉ)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("build_version", paramｉ.nG);
    localHashMap.put("display_version", paramｉ.versionName);
    localHashMap.put("instance", paramｉ.nn);
    localHashMap.put("source", "3");
    return localHashMap;
  }
  
  private sn ˊ(sn paramsn, String paramString1, String paramString2)
  {
    return paramsn.ՙ("Accept", "application/json").ՙ("User-Agent", "Crashlytics Android SDK/" + this.Rw.getVersion()).ՙ("X-CRASHLYTICS-DEVELOPER-TOKEN", "bca6990fc3c15a8105800c0673517a4b579634a1").ՙ("X-CRASHLYTICS-API-CLIENT-TYPE", "android").ՙ("X-CRASHLYTICS-API-CLIENT-VERSION", this.Rw.getVersion()).ՙ("X-CRASHLYTICS-API-KEY", paramString1).ՙ("X-CRASHLYTICS-D", paramString2);
  }
  
  public ｬ ˊ(String paramString1, String paramString2, ｉ paramｉ)
  {
    Object localObject4 = null;
    Object localObject3 = null;
    Object localObject2 = localObject3;
    Object localObject1 = localObject4;
    try
    {
      Map localMap = ˊ(paramｉ);
      localObject2 = localObject3;
      localObject1 = localObject4;
      paramｉ = ˊ(localMap);
      localObject2 = paramｉ;
      localObject1 = paramｉ;
      paramString1 = ˊ(paramｉ, paramString1, paramString2);
      localObject2 = paramString1;
      localObject1 = paramString1;
      pj.cd().ˑ("Beta", "Checking for updates from " + getUrl());
      localObject2 = paramString1;
      localObject1 = paramString1;
      pj.cd().ˑ("Beta", "Checking for updates query params are: " + localMap);
      localObject2 = paramString1;
      localObject1 = paramString1;
      if (paramString1.ds())
      {
        localObject2 = paramString1;
        localObject1 = paramString1;
        pj.cd().ˑ("Beta", "Checking for updates was successful");
        localObject2 = paramString1;
        localObject1 = paramString1;
        paramString2 = new JSONObject(paramString1.du());
        localObject2 = paramString1;
        localObject1 = paramString1;
        paramString2 = this.qm.ˊ(paramString2);
        if (paramString1 != null)
        {
          paramString1 = paramString1.header("X-REQUEST-ID");
          pj.cd().ˑ("Fabric", "Checking for updates request ID: " + paramString1);
        }
        return paramString2;
      }
      localObject2 = paramString1;
      localObject1 = paramString1;
      pj.cd().ᐨ("Beta", "Checking for updates failed. Response code: " + paramString1.code());
      if (paramString1 != null)
      {
        paramString1 = paramString1.header("X-REQUEST-ID");
        pj.cd().ˑ("Fabric", "Checking for updates request ID: " + paramString1);
      }
    }
    catch (Exception paramString1)
    {
      localObject1 = localObject2;
      pj.cd().ˏ("Beta", "Error while checking for updates from " + getUrl(), paramString1);
    }
    finally
    {
      if (localObject1 != null)
      {
        paramString2 = ((sn)localObject1).header("X-REQUEST-ID");
        pj.cd().ˑ("Fabric", "Checking for updates request ID: " + paramString2);
      }
    }
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï½
 * JD-Core Version:    0.7.0.1
 */