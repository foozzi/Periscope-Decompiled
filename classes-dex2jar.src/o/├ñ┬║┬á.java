package o;

import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.ParcelFileDescriptor;

public class 亠
  implements ᒨ<ParcelFileDescriptor>
{
  private static final 亠.if ky = new 亠.if();
  private int kA;
  private 亠.if kz;
  
  public 亠()
  {
    this(ky, -1);
  }
  
  亠(亠.if paramif, int paramInt)
  {
    this.kz = paramif;
    this.kA = paramInt;
  }
  
  public String getId()
  {
    return "VideoBitmapDecoder.com.bumptech.glide.load.resource.bitmap";
  }
  
  public Bitmap ˊ(ParcelFileDescriptor paramParcelFileDescriptor, ი paramი, int paramInt1, int paramInt2, ﭝ paramﭝ)
  {
    paramﭝ = this.kz.ǰ();
    paramﭝ.setDataSource(paramParcelFileDescriptor.getFileDescriptor());
    if (this.kA >= 0) {
      paramი = paramﭝ.getFrameAtTime(this.kA);
    } else {
      paramი = paramﭝ.getFrameAtTime();
    }
    paramﭝ.release();
    paramParcelFileDescriptor.close();
    return paramი;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.äº 
 * JD-Core Version:    0.7.0.1
 */