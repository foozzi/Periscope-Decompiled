package o;

import android.content.ComponentName;
import android.content.Context;
import android.os.AsyncTask;
import android.util.Log;
import android.util.Xml;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import org.xmlpull.v1.XmlSerializer;

final class ﭕ$ˏ
  extends AsyncTask<Object, Void, Void>
{
  private ﭕ$ˏ(ﭕ paramﭕ) {}
  
  public Void ˊ(Object... paramVarArgs)
  {
    List localList = (List)paramVarArgs[0];
    Object localObject2 = (String)paramVarArgs[1];
    try
    {
      paramVarArgs = ﭕ.ˊ(this.ᔫ).openFileOutput((String)localObject2, 0);
    }
    catch (FileNotFoundException paramVarArgs)
    {
      Log.e(ﭕ.г(), "Error writing historical recrod file: " + (String)localObject2, paramVarArgs);
      return null;
    }
    localObject2 = Xml.newSerializer();
    try
    {
      ((XmlSerializer)localObject2).setOutput(paramVarArgs, null);
      ((XmlSerializer)localObject2).startDocument("UTF-8", Boolean.valueOf(true));
      ((XmlSerializer)localObject2).startTag(null, "historical-records");
      int j = localList.size();
      int i = 0;
      while (i < j)
      {
        ﭕ.ˋ localˋ = (ﭕ.ˋ)localList.remove(0);
        ((XmlSerializer)localObject2).startTag(null, "historical-record");
        ((XmlSerializer)localObject2).attribute(null, "activity", localˋ.ᘂ.flattenToString());
        ((XmlSerializer)localObject2).attribute(null, "time", String.valueOf(localˋ.time));
        ((XmlSerializer)localObject2).attribute(null, "weight", String.valueOf(localˋ.weight));
        ((XmlSerializer)localObject2).endTag(null, "historical-record");
        i += 1;
      }
      ((XmlSerializer)localObject2).endTag(null, "historical-records");
      ((XmlSerializer)localObject2).endDocument();
      return null;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      Log.e(ﭕ.г(), "Error writing historical recrod file: " + ﭕ.ˋ(this.ᔫ), localIllegalArgumentException);
    }
    catch (IllegalStateException localIllegalStateException)
    {
      Log.e(ﭕ.г(), "Error writing historical recrod file: " + ﭕ.ˋ(this.ᔫ), localIllegalStateException);
    }
    catch (IOException localIOException)
    {
      Log.e(ﭕ.г(), "Error writing historical recrod file: " + ﭕ.ˋ(this.ᔫ), localIOException);
    }
    finally
    {
      ﭕ.ˊ(this.ᔫ, true);
      if (paramVarArgs != null) {
        try
        {
          paramVarArgs.close();
        }
        catch (IOException paramVarArgs) {}
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï­.Ë
 * JD-Core Version:    0.7.0.1
 */