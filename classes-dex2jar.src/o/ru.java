package o;

import android.content.Context;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TreeSet;
import java.util.concurrent.CopyOnWriteArrayList;

public abstract class ru<T>
{
  protected final rt<T> Xv;
  protected final sc Xw;
  private final int Xx;
  protected volatile long Xy;
  protected final List<sd> Xz = new CopyOnWriteArrayList();
  protected final Context dV;
  protected final qk ql;
  
  public ru(Context paramContext, rt<T> paramrt, qk paramqk, sc paramsc, int paramInt)
  {
    this.dV = paramContext.getApplicationContext();
    this.Xv = paramrt;
    this.Xw = paramsc;
    this.ql = paramqk;
    this.Xy = this.ql.cy();
    this.Xx = paramInt;
  }
  
  private void ᓪ(String paramString)
  {
    Iterator localIterator = this.Xz.iterator();
    while (localIterator.hasNext())
    {
      sd localsd = (sd)localIterator.next();
      try
      {
        localsd.ᔾ(paramString);
      }
      catch (Exception localException)
      {
        qh.ˊ(this.dV, "One of the roll over listeners threw an exception", localException);
      }
    }
  }
  
  private void ﮂ(int paramInt)
  {
    if (!this.Xw.ᵓ(paramInt, ṭ()))
    {
      String str = String.format(Locale.US, "session analytics events file is %d bytes, new event is %d bytes, this is over flush limit of %d, rolling it over", new Object[] { Integer.valueOf(this.Xw.di()), Integer.valueOf(paramInt), Integer.valueOf(ṭ()) });
      qh.ˊ(this.dV, 4, "Fabric", str);
      dc();
    }
  }
  
  public boolean dc()
  {
    boolean bool = false;
    String str = null;
    if (!this.Xw.dj())
    {
      str = ḭ();
      this.Xw.ᕐ(str);
      qh.ˊ(this.dV, 4, "Fabric", String.format(Locale.US, "generated new file %s", new Object[] { str }));
      this.Xy = this.ql.cy();
      bool = true;
    }
    ᓪ(str);
    return bool;
  }
  
  public List<File> df()
  {
    return this.Xw.ﮄ(1);
  }
  
  public void dg()
  {
    this.Xw.ˍ(this.Xw.dk());
    this.Xw.dl();
  }
  
  public void dh()
  {
    Object localObject2 = this.Xw.dk();
    int i = ṫ();
    if (((List)localObject2).size() <= i) {
      return;
    }
    int j = ((List)localObject2).size() - i;
    qh.ᐝ(this.dV, String.format(Locale.US, "Found %d files in  roll over directory, this is greater than %d, deleting %d oldest files", new Object[] { Integer.valueOf(((List)localObject2).size()), Integer.valueOf(i), Integer.valueOf(j) }));
    Object localObject1 = new TreeSet(new rv(this));
    localObject2 = ((List)localObject2).iterator();
    while (((Iterator)localObject2).hasNext())
    {
      File localFile = (File)((Iterator)localObject2).next();
      ((TreeSet)localObject1).add(new if(localFile, ᓫ(localFile.getName())));
    }
    localObject2 = new ArrayList();
    localObject1 = ((TreeSet)localObject1).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      ((ArrayList)localObject2).add(((if)((Iterator)localObject1).next()).file);
      if (((ArrayList)localObject2).size() == j) {
        break;
      }
    }
    this.Xw.ˍ((List)localObject2);
  }
  
  public void ˊ(sd paramsd)
  {
    if (paramsd != null) {
      this.Xz.add(paramsd);
    }
  }
  
  public void ˌ(List<File> paramList)
  {
    this.Xw.ˍ(paramList);
  }
  
  public long ᓫ(String paramString)
  {
    paramString = paramString.split("_");
    if (paramString.length != 3) {
      return 0L;
    }
    try
    {
      long l = Long.valueOf(paramString[2]).longValue();
      return l;
    }
    catch (NumberFormatException paramString) {}
    return 0L;
  }
  
  public void ᖮ(T paramT)
  {
    paramT = this.Xv.ᑊ(paramT);
    ﮂ(paramT.length);
    this.Xw.ˍ(paramT);
  }
  
  protected abstract String ḭ();
  
  protected int ṫ()
  {
    return this.Xx;
  }
  
  protected int ṭ()
  {
    return 8000;
  }
  
  static class if
  {
    final File file;
    final long timestamp;
    
    public if(File paramFile, long paramLong)
    {
      this.file = paramFile;
      this.timestamp = paramLong;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ru
 * JD-Core Version:    0.7.0.1
 */