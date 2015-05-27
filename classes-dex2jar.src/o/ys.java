package o;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.Matrix;
import android.hardware.Camera;
import android.hardware.Camera.Parameters;
import java.io.ByteArrayOutputStream;
import java.nio.Buffer;

class ys
  implements Runnable
{
  ys(yq paramyq, Buffer paramBuffer) {}
  
  public void run()
  {
    Camera.Parameters localParameters = yq.ˊ(this.bqL).getParameters();
    Bitmap localBitmap = Bitmap.createBitmap(320, 568, Bitmap.Config.ARGB_8888);
    localBitmap.copyPixelsFromBuffer(this.bqM);
    Object localObject = new Matrix();
    ((Matrix)localObject).postRotate(180.0F);
    localObject = Bitmap.createBitmap(localBitmap, 0, 0, 320, 568, (Matrix)localObject, true);
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    ((Bitmap)localObject).compress(Bitmap.CompressFormat.JPEG, localParameters.getJpegQuality(), localByteArrayOutputStream);
    ((Bitmap)localObject).recycle();
    localBitmap.recycle();
    yq.ˋ(this.bqL).ᒾ(localByteArrayOutputStream.toByteArray());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ys
 * JD-Core Version:    0.7.0.1
 */