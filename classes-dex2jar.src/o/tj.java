package o;

import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import org.json.JSONObject;

class tj
  implements th
{
  private final pq Rw;
  
  public tj(pq parampq)
  {
    this.Rw = parampq;
  }
  
  public JSONObject dI()
  {
    pj.cd().ˑ("Fabric", "Reading cached settings...");
    Object localObject4 = null;
    Object localObject5 = null;
    FileInputStream localFileInputStream = null;
    JSONObject localJSONObject = null;
    Object localObject2 = localObject4;
    Object localObject1 = localObject5;
    try
    {
      File localFile = new File(new sw(this.Rw).getFilesDir(), "com.crashlytics.settings.json");
      localObject2 = localObject4;
      localObject1 = localObject5;
      if (localFile.exists())
      {
        localObject2 = localObject4;
        localObject1 = localObject5;
        localFileInputStream = new FileInputStream(localFile);
        localObject2 = localFileInputStream;
        localObject1 = localFileInputStream;
        localJSONObject = new JSONObject(qh.ʽ(localFileInputStream));
        localObject1 = localJSONObject;
      }
      else
      {
        localObject2 = localObject4;
        localObject1 = localObject5;
        pj.cd().ˑ("Fabric", "No cached settings found.");
        localObject1 = localJSONObject;
      }
      qh.ˊ(localFileInputStream, "Error while closing settings cache file.");
      return localObject1;
    }
    catch (Exception localException)
    {
      localObject1 = localObject2;
      pj.cd().ˏ("Fabric", "Failed to fetch cached settings", localException);
      return null;
    }
    finally
    {
      qh.ˊ((Closeable)localObject1, "Error while closing settings cache file.");
    }
  }
  
  public void ˊ(long paramLong, JSONObject paramJSONObject)
  {
    pj.cd().ˑ("Fabric", "Writing settings to cache file...");
    if (paramJSONObject != null)
    {
      Object localObject2 = null;
      FileWriter localFileWriter2 = null;
      FileWriter localFileWriter1 = localFileWriter2;
      Object localObject1 = localObject2;
      try
      {
        paramJSONObject.put("expires_at", paramLong);
        localFileWriter1 = localFileWriter2;
        localObject1 = localObject2;
        localFileWriter2 = new FileWriter(new File(new sw(this.Rw).getFilesDir(), "com.crashlytics.settings.json"));
        localFileWriter1 = localFileWriter2;
        localObject1 = localFileWriter2;
        localFileWriter2.write(paramJSONObject.toString());
        localFileWriter1 = localFileWriter2;
        localObject1 = localFileWriter2;
        localFileWriter2.flush();
        qh.ˊ(localFileWriter2, "Failed to close settings writer.");
        return;
      }
      catch (Exception paramJSONObject)
      {
        localObject1 = localFileWriter1;
        pj.cd().ˏ("Fabric", "Failed to cache settings", paramJSONObject);
        qh.ˊ(localFileWriter1, "Failed to close settings writer.");
        return;
      }
      finally
      {
        qh.ˊ((Closeable)localObject1, "Failed to close settings writer.");
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.tj
 * JD-Core Version:    0.7.0.1
 */