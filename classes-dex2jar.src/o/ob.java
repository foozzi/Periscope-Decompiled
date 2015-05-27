package o;

import com.twitter.sdk.android.core.internal.scribe.ScribeFilesSender;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;

public class ob
  implements qu.ˋ
{
  public ob(ScribeFilesSender paramScribeFilesSender, boolean[] paramArrayOfBoolean, ByteArrayOutputStream paramByteArrayOutputStream) {}
  
  public void ˊ(InputStream paramInputStream, int paramInt)
  {
    byte[] arrayOfByte = new byte[paramInt];
    paramInputStream.read(arrayOfByte);
    if (this.RV[0] != 0) {
      this.RW.write(ScribeFilesSender.access$000());
    } else {
      this.RV[0] = true;
    }
    this.RW.write(arrayOfByte);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ob
 * JD-Core Version:    0.7.0.1
 */