package o;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class ﾝ
  implements ﺀ<InputStream, ﻠ>
{
  private static final ﾝ.ˊ ld = new ﾝ.ˊ();
  private static final ﾝ.if le = new ﾝ.if();
  private final Context dV;
  private final ი eD;
  private final ﾝ.ˊ lf;
  private final ﾝ.if lg;
  private final ﺮ lh;
  
  public ﾝ(Context paramContext, ი paramი)
  {
    this(paramContext, paramი, ld, le);
  }
  
  ﾝ(Context paramContext, ი paramი, ﾝ.ˊ paramˊ, ﾝ.if paramif)
  {
    this.dV = paramContext;
    this.eD = paramი;
    this.lg = paramif;
    this.lh = new ﺮ(paramი);
    this.lf = paramˊ;
  }
  
  private Bitmap ˊ(ᵨ paramᵨ, ⅹ paramⅹ, byte[] paramArrayOfByte)
  {
    paramᵨ.ˊ(paramⅹ, paramArrayOfByte);
    paramᵨ.advance();
    return paramᵨ.ῒ();
  }
  
  private ｃ ˊ(byte[] paramArrayOfByte, int paramInt1, int paramInt2, ⅽ paramⅽ, ᵨ paramᵨ)
  {
    paramⅽ = paramⅽ.ィ();
    if ((paramⅽ.ⅴ() <= 0) || (paramⅽ.getStatus() != 0)) {
      return null;
    }
    paramᵨ = ˊ(paramᵨ, paramⅽ, paramArrayOfByte);
    if (paramᵨ == null) {
      return null;
    }
    ᒦ localᒦ = ᒦ.ﱢ();
    return new ｃ(new ﻠ(this.dV, this.lh, this.eD, localᒦ, paramInt1, paramInt2, paramⅽ, paramArrayOfByte, paramᵨ));
  }
  
  private static byte[] ˎ(InputStream paramInputStream)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(16384);
    try
    {
      byte[] arrayOfByte = new byte[16384];
      for (;;)
      {
        int i = paramInputStream.read(arrayOfByte);
        if (i == -1) {
          break;
        }
        localByteArrayOutputStream.write(arrayOfByte, 0, i);
      }
      localByteArrayOutputStream.flush();
    }
    catch (IOException paramInputStream)
    {
      Log.w("GifResourceDecoder", "Error reading data from stream", paramInputStream);
    }
    return localByteArrayOutputStream.toByteArray();
  }
  
  public String getId()
  {
    return "";
  }
  
  public ｃ ˋ(InputStream paramInputStream, int paramInt1, int paramInt2)
  {
    Object localObject1 = ˎ(paramInputStream);
    paramInputStream = this.lf.ˋ((byte[])localObject1);
    ᵨ localᵨ = this.lg.ˊ(this.lh);
    try
    {
      localObject1 = ˊ((byte[])localObject1, paramInt1, paramInt2, paramInputStream, localᵨ);
      return localObject1;
    }
    finally
    {
      this.lf.ˊ(paramInputStream);
      this.lg.ˊ(localᵨ);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï¾
 * JD-Core Version:    0.7.0.1
 */