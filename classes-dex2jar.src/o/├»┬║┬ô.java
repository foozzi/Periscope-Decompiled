package o;

import android.annotation.TargetApi;
import android.os.Build.VERSION;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

class ﺓ
  implements rt<כֿ>
{
  public byte[] ˊ(כֿ paramכֿ)
  {
    return ˋ(paramכֿ).toString().getBytes("UTF-8");
  }
  
  @TargetApi(9)
  public JSONObject ˋ(כֿ paramכֿ)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject();
      ﮈ localﮈ = paramכֿ.pB;
      localJSONObject.put("appBundleId", localﮈ.pT);
      localJSONObject.put("executionId", localﮈ.pU);
      localJSONObject.put("installationId", localﮈ.pV);
      localJSONObject.put("androidId", localﮈ.pW);
      localJSONObject.put("advertisingId", localﮈ.pX);
      localJSONObject.put("betaDeviceToken", localﮈ.pY);
      localJSONObject.put("buildId", localﮈ.nn);
      localJSONObject.put("osVersion", localﮈ.pZ);
      localJSONObject.put("deviceModel", localﮈ.qa);
      localJSONObject.put("appVersionCode", localﮈ.qb);
      localJSONObject.put("appVersionName", localﮈ.qc);
      localJSONObject.put("timestamp", paramכֿ.timestamp);
      localJSONObject.put("type", paramכֿ.pC.toString());
      localJSONObject.put("details", new JSONObject(paramכֿ.pD));
      localJSONObject.put("customType", paramכֿ.pE);
      localJSONObject.put("customAttributes", new JSONObject(paramכֿ.pF));
      return localJSONObject;
    }
    catch (JSONException paramכֿ)
    {
      if (Build.VERSION.SDK_INT >= 9) {
        throw new IOException(paramכֿ.getMessage(), paramכֿ);
      }
      throw new IOException(paramכֿ.getMessage());
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ïº
 * JD-Core Version:    0.7.0.1
 */