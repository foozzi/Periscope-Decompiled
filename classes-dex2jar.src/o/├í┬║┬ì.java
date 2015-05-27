package o;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import java.io.File;
import java.io.InputStream;

public class ẍ
  implements ᓹ<ﾌ, Bitmap>
{
  private final ﺀ<File, Bitmap> hT;
  private final ﺪ<Bitmap> hV;
  private final ẋ ks;
  private final ﾍ kt;
  
  public ẍ(ᓹ<InputStream, Bitmap> paramᓹ, ᓹ<ParcelFileDescriptor, Bitmap> paramᓹ1)
  {
    this.hV = paramᓹ.ｪ();
    this.kt = new ﾍ(paramᓹ.ｩ(), paramᓹ1.ｩ());
    this.hT = paramᓹ.ﻩ();
    this.ks = new ẋ(paramᓹ.ｃ(), paramᓹ1.ｃ());
  }
  
  public ﺀ<File, Bitmap> ﻩ()
  {
    return this.hT;
  }
  
  public ﺀ<ﾌ, Bitmap> ｃ()
  {
    return this.ks;
  }
  
  public ﭥ<ﾌ> ｩ()
  {
    return this.kt;
  }
  
  public ﺪ<Bitmap> ｪ()
  {
    return this.hV;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.áº
 * JD-Core Version:    0.7.0.1
 */