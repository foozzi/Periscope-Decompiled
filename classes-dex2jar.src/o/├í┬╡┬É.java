package o;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;

public class ᵐ
  implements ﺀ<ParcelFileDescriptor, Bitmap>
{
  private final ი eD;
  private ﭝ eF;
  private final 亠 kc;
  
  public ᵐ(ი paramი, ﭝ paramﭝ)
  {
    this(new 亠(), paramი, paramﭝ);
  }
  
  public ᵐ(亠 param亠, ი paramი, ﭝ paramﭝ)
  {
    this.kc = param亠;
    this.eD = paramი;
    this.eF = paramﭝ;
  }
  
  public String getId()
  {
    return "FileDescriptorBitmapDecoder.com.bumptech.glide.load.data.bitmap";
  }
  
  public ڔ<Bitmap> ˊ(ParcelFileDescriptor paramParcelFileDescriptor, int paramInt1, int paramInt2)
  {
    return ᖟ.ˊ(this.kc.ˊ(paramParcelFileDescriptor, this.eD, paramInt1, paramInt2, this.eF), this.eD);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.áµ
 * JD-Core Version:    0.7.0.1
 */