package o;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.DataSetObservable;
import android.text.TextUtils;
import android.util.Log;
import android.util.Xml;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class ﭕ
  extends DataSetObservable
{
  private static final String LOG_TAG = ﭕ.class.getSimpleName();
  private static final Object ᒑ = new Object();
  private static final Map<String, ﭕ> ᒬ = new HashMap();
  private final Context mContext;
  private final Object ᒭ;
  private final List<ﭕ.if> ᒮ;
  private final List<ﭕ.ˋ> ᒯ;
  private final String ᒲ;
  private ﭕ.ˊ ᒳ;
  private int ᒶ;
  private boolean ᒷ;
  private boolean ᒺ;
  private boolean ᓖ;
  private boolean ᓘ;
  private ﭕ.ˎ ᓛ;
  private Intent ṝ;
  
  private void ɪ()
  {
    if (!this.ᒺ) {
      throw new IllegalStateException("No preceding call to #readHistoricalData");
    }
    if (!this.ᓖ) {
      return;
    }
    this.ᓖ = false;
    if (!TextUtils.isEmpty(this.ᒲ)) {
      ʲ.ˊ(new ﭕ.ˏ(this, null), new Object[] { this.ᒯ, this.ᒲ });
    }
  }
  
  private void ɾ()
  {
    boolean bool1 = ʟ();
    boolean bool2 = ʰ();
    Ϊ();
    if ((bool1 | bool2))
    {
      ɿ();
      notifyChanged();
    }
  }
  
  private boolean ɿ()
  {
    if ((this.ᒳ != null) && (this.ṝ != null) && (!this.ᒮ.isEmpty()) && (!this.ᒯ.isEmpty()))
    {
      this.ᒳ.ˊ(this.ṝ, this.ᒮ, Collections.unmodifiableList(this.ᒯ));
      return true;
    }
    return false;
  }
  
  private boolean ʟ()
  {
    if ((this.ᓘ) && (this.ṝ != null))
    {
      this.ᓘ = false;
      this.ᒮ.clear();
      List localList = this.mContext.getPackageManager().queryIntentActivities(this.ṝ, 0);
      int j = localList.size();
      int i = 0;
      while (i < j)
      {
        ResolveInfo localResolveInfo = (ResolveInfo)localList.get(i);
        this.ᒮ.add(new ﭕ.if(this, localResolveInfo));
        i += 1;
      }
      return true;
    }
    return false;
  }
  
  private boolean ʰ()
  {
    if ((this.ᒷ) && (this.ᓖ) && (!TextUtils.isEmpty(this.ᒲ)))
    {
      this.ᒷ = false;
      this.ᒺ = true;
      Ї();
      return true;
    }
    return false;
  }
  
  private boolean ˊ(ﭕ.ˋ paramˋ)
  {
    boolean bool = this.ᒯ.add(paramˋ);
    if (bool)
    {
      this.ᓖ = true;
      Ϊ();
      ɪ();
      ɿ();
      notifyChanged();
    }
    return bool;
  }
  
  private void Ϊ()
  {
    int j = this.ᒯ.size() - this.ᒶ;
    if (j <= 0) {
      return;
    }
    this.ᓖ = true;
    int i = 0;
    while (i < j)
    {
      ﭕ.ˋ localˋ = (ﭕ.ˋ)this.ᒯ.remove(0);
      i += 1;
    }
  }
  
  private void Ї()
  {
    try
    {
      FileInputStream localFileInputStream = this.mContext.openFileInput(this.ᒲ);
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      return;
    }
    for (;;)
    {
      int i;
      try
      {
        XmlPullParser localXmlPullParser = Xml.newPullParser();
        localXmlPullParser.setInput(localFileNotFoundException, null);
        i = 0;
        if ((i != 1) && (i != 2))
        {
          i = localXmlPullParser.next();
          continue;
        }
        if (!"historical-records".equals(localXmlPullParser.getName())) {
          throw new XmlPullParserException("Share records file does not start with historical-records tag.");
        }
        List localList = this.ᒯ;
        localList.clear();
        i = localXmlPullParser.next();
        if (i == 1)
        {
          continue;
          if (!"historical-record".equals(localXmlPullParser.getName())) {
            throw new XmlPullParserException("Share records file not well-formed.");
          }
          localList.add(new ﭕ.ˋ(localXmlPullParser.getAttributeValue(null, "activity"), Long.parseLong(localXmlPullParser.getAttributeValue(null, "time")), Float.parseFloat(localXmlPullParser.getAttributeValue(null, "weight"))));
          continue;
          if (localFileNotFoundException != null) {
            try
            {
              localFileNotFoundException.close();
              return;
            }
            catch (IOException localIOException1)
            {
              return;
            }
          }
          return;
        }
      }
      catch (XmlPullParserException localXmlPullParserException)
      {
        Log.e(LOG_TAG, "Error reading historical recrod file: " + this.ᒲ, localXmlPullParserException);
        if (localIOException1 != null) {
          try
          {
            localIOException1.close();
            return;
          }
          catch (IOException localIOException2)
          {
            return;
          }
        }
      }
      catch (IOException localIOException5)
      {
        Log.e(LOG_TAG, "Error reading historical recrod file: " + this.ᒲ, localIOException5);
        if (localIOException2 != null) {
          try
          {
            localIOException2.close();
            return;
          }
          catch (IOException localIOException3)
          {
            return;
          }
        }
      }
      finally
      {
        if (localIOException3 != null) {
          try
          {
            localIOException3.close();
          }
          catch (IOException localIOException4) {}
        }
      }
      if (i != 3) {
        if (i != 4) {}
      }
    }
  }
  
  public int getHistorySize()
  {
    synchronized (this.ᒭ)
    {
      ɾ();
      int i = this.ᒯ.size();
      return i;
    }
  }
  
  public int ȋ()
  {
    synchronized (this.ᒭ)
    {
      ɾ();
      int i = this.ᒮ.size();
      return i;
    }
  }
  
  public ResolveInfo ɨ()
  {
    synchronized (this.ᒭ)
    {
      ɾ();
      if (!this.ᒮ.isEmpty())
      {
        ResolveInfo localResolveInfo = ((ﭕ.if)this.ᒮ.get(0)).resolveInfo;
        return localResolveInfo;
      }
    }
    return null;
  }
  
  public int ˊ(ResolveInfo paramResolveInfo)
  {
    synchronized (this.ᒭ)
    {
      ɾ();
      List localList = this.ᒮ;
      int j = localList.size();
      int i = 0;
      while (i < j)
      {
        ResolveInfo localResolveInfo = ((ﭕ.if)localList.get(i)).resolveInfo;
        if (localResolveInfo == paramResolveInfo) {
          return i;
        }
        i += 1;
      }
      return -1;
    }
  }
  
  public ResolveInfo ᗮ(int paramInt)
  {
    synchronized (this.ᒭ)
    {
      ɾ();
      ResolveInfo localResolveInfo = ((ﭕ.if)this.ᒮ.get(paramInt)).resolveInfo;
      return localResolveInfo;
    }
  }
  
  public Intent ᴶ(int paramInt)
  {
    synchronized (this.ᒭ)
    {
      Object localObject2 = this.ṝ;
      if (localObject2 == null) {
        return null;
      }
      ɾ();
      localObject2 = (ﭕ.if)this.ᒮ.get(paramInt);
      localObject2 = new ComponentName(((ﭕ.if)localObject2).resolveInfo.activityInfo.packageName, ((ﭕ.if)localObject2).resolveInfo.activityInfo.name);
      Intent localIntent1 = new Intent(this.ṝ);
      localIntent1.setComponent((ComponentName)localObject2);
      if (this.ᓛ != null)
      {
        Intent localIntent2 = new Intent(localIntent1);
        boolean bool = this.ᓛ.ˊ(this, localIntent2);
        if (bool) {
          return null;
        }
      }
      ˊ(new ﭕ.ˋ((ComponentName)localObject2, System.currentTimeMillis(), 1.0F));
      return localIntent1;
    }
  }
  
  public void ᴸ(int paramInt)
  {
    for (;;)
    {
      synchronized (this.ᒭ)
      {
        ɾ();
        ﭕ.if localif1 = (ﭕ.if)this.ᒮ.get(paramInt);
        ﭕ.if localif2 = (ﭕ.if)this.ᒮ.get(0);
        if (localif2 != null)
        {
          f = localif2.weight - localif1.weight + 5.0F;
          ˊ(new ﭕ.ˋ(new ComponentName(localif1.resolveInfo.activityInfo.packageName, localif1.resolveInfo.activityInfo.name), System.currentTimeMillis(), f));
          return;
        }
      }
      float f = 1.0F;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï­
 * JD-Core Version:    0.7.0.1
 */