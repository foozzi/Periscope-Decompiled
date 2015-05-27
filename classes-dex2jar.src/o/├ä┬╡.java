package o;

import android.graphics.Bitmap;
import android.util.Log;
import java.io.IOException;
import java.io.OutputStream;

public class ĵ
  implements ﺪ<ﻠ>
{
  private static final ĵ.if li = new ĵ.if();
  private final ი eD;
  private final ᵨ.if lj;
  private final ĵ.if lk;
  
  public ĵ(ი paramი)
  {
    this(paramი, li);
  }
  
  ĵ(ი paramი, ĵ.if paramif)
  {
    this.eD = paramი;
    this.lj = new ﺮ(paramი);
    this.lk = paramif;
  }
  
  private ڔ<Bitmap> ˊ(Bitmap paramBitmap, ﺭ<Bitmap> paramﺭ, ﻠ paramﻠ)
  {
    paramBitmap = this.lk.ˋ(paramBitmap, this.eD);
    paramﺭ = paramﺭ.ˊ(paramBitmap, paramﻠ.getIntrinsicWidth(), paramﻠ.getIntrinsicHeight());
    if (!paramBitmap.equals(paramﺭ)) {
      paramBitmap.recycle();
    }
    return paramﺭ;
  }
  
  private boolean ˊ(byte[] paramArrayOfByte, OutputStream paramOutputStream)
  {
    try
    {
      paramOutputStream.write(paramArrayOfByte);
      return true;
    }
    catch (IOException paramArrayOfByte)
    {
      if (Log.isLoggable("GifEncoder", 3)) {
        Log.d("GifEncoder", "Failed to write data to output stream in GifResourceEncoder", paramArrayOfByte);
      }
    }
    return false;
  }
  
  private ᵨ ˎ(byte[] paramArrayOfByte)
  {
    Object localObject = this.lk.ҭ();
    ((ⅽ)localObject).ˊ(paramArrayOfByte);
    localObject = ((ⅽ)localObject).ィ();
    ᵨ localᵨ = this.lk.ˋ(this.lj);
    localᵨ.ˊ((ⅹ)localObject, paramArrayOfByte);
    localᵨ.advance();
    return localᵨ;
  }
  
  public String getId()
  {
    return "";
  }
  
  public boolean ˊ(ڔ<ﻠ> paramڔ, OutputStream paramOutputStream)
  {
    long l = ｯ.〱();
    paramڔ = (ﻠ)paramڔ.get();
    ﺭ localﺭ = paramڔ.ʋ();
    if ((localﺭ instanceof ᒦ)) {
      return ˊ(paramڔ.getData(), paramOutputStream);
    }
    ᵨ localᵨ = ˎ(paramڔ.getData());
    ײַ localײַ = this.lk.Ү();
    if (!localײַ.ˊ(paramOutputStream)) {
      return false;
    }
    int i = 0;
    while (i < localᵨ.getFrameCount())
    {
      paramOutputStream = ˊ(localᵨ.ῒ(), localﺭ, paramڔ);
      try
      {
        bool = localײַ.ˎ((Bitmap)paramOutputStream.get());
        if (!bool) {
          return false;
        }
        localײַ.і(localᵨ.Ι(localᵨ.ẛ()));
        localᵨ.advance();
      }
      finally
      {
        paramOutputStream.recycle();
      }
      i += 1;
    }
    boolean bool = localײַ.Ｌ();
    if (Log.isLoggable("GifEncoder", 2)) {
      Log.v("GifEncoder", "Encoded gif with " + localᵨ.getFrameCount() + " frames and " + paramڔ.getData().length + " bytes in " + ｯ.ˎ(l) + " ms");
    }
    return bool;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Äµ
 * JD-Core Version:    0.7.0.1
 */