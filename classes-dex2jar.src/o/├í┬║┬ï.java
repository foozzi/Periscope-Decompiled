package o;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;

public class ẋ
  implements ﺀ<ﾌ, Bitmap>
{
  private final ﺀ<InputStream, Bitmap> kq;
  private final ﺀ<ParcelFileDescriptor, Bitmap> kr;
  
  public ẋ(ﺀ<InputStream, Bitmap> paramﺀ, ﺀ<ParcelFileDescriptor, Bitmap> paramﺀ1)
  {
    this.kq = paramﺀ;
    this.kr = paramﺀ1;
  }
  
  public String getId()
  {
    return "ImageVideoBitmapDecoder.com.bumptech.glide.load.resource.bitmap";
  }
  
  public ڔ<Bitmap> ˊ(ﾌ paramﾌ, int paramInt1, int paramInt2)
  {
    Object localObject2 = null;
    InputStream localInputStream = paramﾌ.冫();
    Object localObject1 = localObject2;
    if (localInputStream != null) {
      try
      {
        localObject1 = this.kq.ˋ(localInputStream, paramInt1, paramInt2);
      }
      catch (IOException localIOException)
      {
        localObject1 = localObject2;
        if (Log.isLoggable("ImageVideoDecoder", 2))
        {
          Log.v("ImageVideoDecoder", "Failed to load image from stream, trying FileDescriptor", localIOException);
          localObject1 = localObject2;
        }
      }
    }
    localObject2 = localObject1;
    if (localObject1 == null)
    {
      paramﾌ = paramﾌ.לּ();
      localObject2 = localObject1;
      if (paramﾌ != null) {
        localObject2 = this.kr.ˋ(paramﾌ, paramInt1, paramInt2);
      }
    }
    return localObject2;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.áº
 * JD-Core Version:    0.7.0.1
 */