package o;

import android.graphics.Bitmap;
import java.io.File;
import java.io.InputStream;

public class 〵
  implements ᓹ<InputStream, Bitmap>
{
  private final ᒫ kb;
  private final ノ ku;
  private final Ξ kv = new Ξ();
  private final ﱠ<Bitmap> kw;
  
  public 〵(ი paramი, ﭝ paramﭝ)
  {
    this.ku = new ノ(paramი, paramﭝ);
    this.kb = new ᒫ();
    this.kw = new ﱠ(this.ku);
  }
  
  public ﺀ<File, Bitmap> ﻩ()
  {
    return this.kw;
  }
  
  public ﺀ<InputStream, Bitmap> ｃ()
  {
    return this.ku;
  }
  
  public ﭥ<InputStream> ｩ()
  {
    return this.kv;
  }
  
  public ﺪ<Bitmap> ｪ()
  {
    return this.kb;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ãµ
 * JD-Core Version:    0.7.0.1
 */