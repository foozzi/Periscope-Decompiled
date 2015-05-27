package o;

import android.annotation.SuppressLint;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import org.json.JSONObject;

class tk
  implements tt
{
  private final pq Rw;
  private final tx YN;
  private final tw YO;
  private final th YP;
  private final ty YQ;
  private final sx pr;
  private final qk ql;
  
  public tk(pq parampq, tx paramtx, qk paramqk, tw paramtw, th paramth, ty paramty)
  {
    this.Rw = parampq;
    this.YN = paramtx;
    this.ql = paramqk;
    this.YO = paramtw;
    this.YP = paramth;
    this.YQ = paramty;
    this.pr = new sy(this.Rw);
  }
  
  private void ˊ(JSONObject paramJSONObject, String paramString)
  {
    JSONObject localJSONObject = paramJSONObject;
    if (!qh.יּ(this.Rw.getContext())) {
      localJSONObject = this.YO.ʻ(paramJSONObject);
    }
    pj.cd().ˑ("Fabric", paramString + localJSONObject.toString());
  }
  
  private tu ˋ(ts paramts)
  {
    Object localObject3 = null;
    Object localObject4 = null;
    Object localObject2 = null;
    Object localObject1 = localObject2;
    try
    {
      if (!ts.Zn.equals(paramts))
      {
        localObject1 = localObject2;
        JSONObject localJSONObject = this.YP.dI();
        if (localJSONObject != null)
        {
          localObject1 = localObject2;
          tu localtu = this.YO.ˊ(this.ql, localJSONObject);
          if (localtu != null)
          {
            localObject1 = localObject2;
            ˊ(localJSONObject, "Loaded cached settings: ");
            localObject1 = localObject2;
            long l = this.ql.cy();
            localObject1 = localObject2;
            if (!ts.Zo.equals(paramts))
            {
              localObject1 = localObject2;
              if (localtu.ᒽ(l)) {}
            }
            else
            {
              paramts = localtu;
              localObject1 = paramts;
              pj.cd().ˑ("Fabric", "Returning cached settings.");
              return paramts;
            }
            localObject1 = localObject2;
            pj.cd().ˑ("Fabric", "Cached settings have expired.");
            paramts = localObject3;
          }
          else
          {
            localObject1 = localObject2;
            pj.cd().ˏ("Fabric", "Failed to transform cached settings data.", null);
            paramts = localObject4;
          }
        }
        else
        {
          localObject1 = localObject2;
          pj.cd().ˑ("Fabric", "No cached settings data found.");
        }
      }
      else
      {
        return null;
      }
    }
    catch (Exception paramts)
    {
      pj.cd().ˏ("Fabric", "Failed to get cached settings", paramts);
      return localObject1;
    }
    return paramts;
  }
  
  public tu dJ()
  {
    return ˊ(ts.Zm);
  }
  
  String dK()
  {
    return qh.ˏ(new String[] { qh.ᴶ(this.Rw.getContext()) });
  }
  
  String dL()
  {
    return this.pr.dG().getString("existing_instance_identifier", "");
  }
  
  boolean dM()
  {
    return !dL().equals(dK());
  }
  
  public tu ˊ(ts paramts)
  {
    Object localObject3 = null;
    JSONObject localJSONObject = null;
    Object localObject2 = localJSONObject;
    Object localObject1 = localObject3;
    try
    {
      if (!pj.ce())
      {
        localObject2 = localJSONObject;
        localObject1 = localObject3;
        if (!dM())
        {
          localObject1 = localObject3;
          localObject2 = ˋ(paramts);
        }
      }
      localObject1 = localObject2;
      if (localObject2 == null)
      {
        localObject1 = localObject2;
        localJSONObject = this.YQ.ˊ(this.YN);
        localObject1 = localObject2;
        if (localJSONObject != null)
        {
          localObject1 = localObject2;
          paramts = this.YO.ˊ(this.ql, localJSONObject);
          localObject1 = paramts;
          this.YP.ˊ(paramts.Zu, localJSONObject);
          localObject1 = paramts;
          ˊ(localJSONObject, "Loaded settings: ");
          localObject1 = paramts;
          ﯦ(dK());
          localObject1 = paramts;
        }
      }
      paramts = (ts)localObject1;
      if (localObject1 == null) {
        paramts = ˋ(ts.Zo);
      }
      return paramts;
    }
    catch (Exception paramts)
    {
      pj.cd().ˏ("Fabric", "Unknown error while loading Crashlytics settings. Crashes will be cached until settings can be retrieved.", paramts);
    }
    return localObject1;
  }
  
  @SuppressLint({"CommitPrefEdits"})
  boolean ﯦ(String paramString)
  {
    SharedPreferences.Editor localEditor = this.pr.edit();
    localEditor.putString("existing_instance_identifier", paramString);
    return this.pr.ˊ(localEditor);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.tk
 * JD-Core Version:    0.7.0.1
 */