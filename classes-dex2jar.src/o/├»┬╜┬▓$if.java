package o;

import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.InputStream;

class ｲ$if
  implements Į<ﾌ>
{
  private final Į<InputStream> jD;
  private final Į<ParcelFileDescriptor> jE;
  
  public ｲ$if(Į<InputStream> paramĮ, Į<ParcelFileDescriptor> paramĮ1)
  {
    this.jD = paramĮ;
    this.jE = paramĮ1;
  }
  
  public void cancel()
  {
    if (this.jD != null) {
      this.jD.cancel();
    }
    if (this.jE != null) {
      this.jE.cancel();
    }
  }
  
  public String getId()
  {
    if (this.jD != null) {
      return this.jD.getId();
    }
    return this.jE.getId();
  }
  
  public ﾌ ˎ(ᔿ paramᔿ)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (this.jD != null) {
      try
      {
        localObject1 = (InputStream)this.jD.ˊ(paramᔿ);
      }
      catch (Exception localException)
      {
        if (Log.isLoggable("IVML", 2)) {
          Log.v("IVML", "Exception fetching input stream, trying ParcelFileDescriptor", localException);
        }
        localObject1 = localObject2;
        if (this.jE == null) {
          throw localException;
        }
      }
    }
    Object localObject3 = null;
    localObject2 = localObject3;
    if (this.jE != null) {
      try
      {
        localObject2 = (ParcelFileDescriptor)this.jE.ˊ(paramᔿ);
      }
      catch (Exception paramᔿ)
      {
        if (Log.isLoggable("IVML", 2)) {
          Log.v("IVML", "Exception fetching ParcelFileDescriptor", paramᔿ);
        }
        localObject2 = localObject3;
        if (localObject1 == null) {
          throw paramᔿ;
        }
      }
    }
    return new ﾌ((InputStream)localObject1, (ParcelFileDescriptor)localObject2);
  }
  
  public void ב()
  {
    if (this.jD != null) {
      this.jD.ב();
    }
    if (this.jE != null) {
      this.jE.ב();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï½².if
 * JD-Core Version:    0.7.0.1
 */