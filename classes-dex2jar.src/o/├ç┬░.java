package o;

import android.graphics.Bitmap;
import com.bumptech.glide.load.resource.bitmap.ImageHeaderParser.ImageType;
import java.io.InputStream;

public class ǰ
  implements ﺀ<ﾌ, ĸ>
{
  private static final ǰ.ˊ lo = new ǰ.ˊ();
  private static final ǰ.if lp = new ǰ.if();
  private final ი eD;
  private String id;
  private final ﺀ<ﾌ, Bitmap> lq;
  private final ﺀ<InputStream, ﻠ> lr;
  private final ǰ.ˊ ls;
  private final ǰ.if lt;
  
  public ǰ(ﺀ<ﾌ, Bitmap> paramﺀ, ﺀ<InputStream, ﻠ> paramﺀ1, ი paramი)
  {
    this(paramﺀ, paramﺀ1, paramი, lo, lp);
  }
  
  ǰ(ﺀ<ﾌ, Bitmap> paramﺀ, ﺀ<InputStream, ﻠ> paramﺀ1, ი paramი, ǰ.ˊ paramˊ, ǰ.if paramif)
  {
    this.lq = paramﺀ;
    this.lr = paramﺀ1;
    this.eD = paramი;
    this.ls = paramˊ;
    this.lt = paramif;
  }
  
  private ĸ ˊ(ﾌ paramﾌ, int paramInt1, int paramInt2, byte[] paramArrayOfByte)
  {
    if (paramﾌ.冫() != null) {
      return ˋ(paramﾌ, paramInt1, paramInt2, paramArrayOfByte);
    }
    return ˋ(paramﾌ, paramInt1, paramInt2);
  }
  
  private ĸ ˋ(ﾌ paramﾌ, int paramInt1, int paramInt2)
  {
    Object localObject = null;
    ڔ localڔ = this.lq.ˋ(paramﾌ, paramInt1, paramInt2);
    paramﾌ = localObject;
    if (localڔ != null) {
      paramﾌ = new ĸ(localڔ, null);
    }
    return paramﾌ;
  }
  
  private ĸ ˋ(ﾌ paramﾌ, int paramInt1, int paramInt2, byte[] paramArrayOfByte)
  {
    InputStream localInputStream = this.lt.ˋ(paramﾌ.冫(), paramArrayOfByte);
    localInputStream.mark(2048);
    Object localObject = this.ls.ˏ(localInputStream);
    localInputStream.reset();
    paramArrayOfByte = null;
    if (localObject == ImageHeaderParser.ImageType.GIF) {
      paramArrayOfByte = ˎ(localInputStream, paramInt1, paramInt2);
    }
    localObject = paramArrayOfByte;
    if (paramArrayOfByte == null) {
      localObject = ˋ(new ﾌ(localInputStream, paramﾌ.לּ()), paramInt1, paramInt2);
    }
    return localObject;
  }
  
  private ĸ ˎ(InputStream paramInputStream, int paramInt1, int paramInt2)
  {
    Object localObject = null;
    ڔ localڔ = this.lr.ˋ(paramInputStream, paramInt1, paramInt2);
    paramInputStream = localObject;
    if (localڔ != null)
    {
      paramInputStream = (ﻠ)localڔ.get();
      if (paramInputStream.getFrameCount() > 1) {
        return new ĸ(null, localڔ);
      }
      paramInputStream = new ĸ(new ᖟ(paramInputStream.ʇ(), this.eD), null);
    }
    return paramInputStream;
  }
  
  public String getId()
  {
    if (this.id == null) {
      this.id = (this.lr.getId() + this.lq.getId());
    }
    return this.id;
  }
  
  public ڔ<ĸ> ˊ(ﾌ paramﾌ, int paramInt1, int paramInt2)
  {
    ﮣ localﮣ = ﮣ.ῖ();
    byte[] arrayOfByte = localﮣ.getBytes();
    try
    {
      paramﾌ = ˊ(paramﾌ, paramInt1, paramInt2, arrayOfByte);
      localﮣ.ˏ(arrayOfByte);
    }
    finally
    {
      localﮣ.ˏ(arrayOfByte);
    }
    return new ř(paramﾌ);
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ç°
 * JD-Core Version:    0.7.0.1
 */