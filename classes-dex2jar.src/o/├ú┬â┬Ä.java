package o;

import android.graphics.Bitmap;
import java.io.InputStream;

public class ノ
  implements ﺀ<InputStream, Bitmap>
{
  private ი eD;
  private ﭝ eF;
  private String id;
  private final ᴧ kx;
  
  public ノ(ი paramი, ﭝ paramﭝ)
  {
    this(ᴧ.jX, paramი, paramﭝ);
  }
  
  public ノ(ᴧ paramᴧ, ი paramი, ﭝ paramﭝ)
  {
    this.kx = paramᴧ;
    this.eD = paramი;
    this.eF = paramﭝ;
  }
  
  public String getId()
  {
    if (this.id == null) {
      this.id = ("StreamBitmapDecoder.com.bumptech.glide.load.resource.bitmap" + this.kx.getId() + this.eF.name());
    }
    return this.id;
  }
  
  public ڔ<Bitmap> ˊ(InputStream paramInputStream, int paramInt1, int paramInt2)
  {
    return ᖟ.ˊ(this.kx.ˊ(paramInputStream, this.eD, paramInt1, paramInt2, this.eF), this.eD);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ã
 * JD-Core Version:    0.7.0.1
 */