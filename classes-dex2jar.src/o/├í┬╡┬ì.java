package o;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import java.io.File;

public class ᵍ
  implements ᓹ<ParcelFileDescriptor, Bitmap>
{
  private final ﺀ<File, Bitmap> hT;
  private final ﭥ<ParcelFileDescriptor> hW;
  private final ᵐ ka;
  private final ᒫ kb;
  
  public ᵍ(ი paramი, ﭝ paramﭝ)
  {
    this.hT = new ﱠ(new ノ(paramი, paramﭝ));
    this.ka = new ᵐ(paramი, paramﭝ);
    this.kb = new ᒫ();
    this.hW = Ꭻ.ﮅ();
  }
  
  public ﺀ<File, Bitmap> ﻩ()
  {
    return this.hT;
  }
  
  public ﺀ<ParcelFileDescriptor, Bitmap> ｃ()
  {
    return this.ka;
  }
  
  public ﭥ<ParcelFileDescriptor> ｩ()
  {
    return this.hW;
  }
  
  public ﺪ<Bitmap> ｪ()
  {
    return this.kb;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.áµ
 * JD-Core Version:    0.7.0.1
 */