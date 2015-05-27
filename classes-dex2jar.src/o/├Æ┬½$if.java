package o;

import android.annotation.TargetApi;
import android.media.MediaCodec.CodecException;

public class ҫ$if
  extends Exception
{
  public final String rY;
  public final String rZ;
  
  public ҫ$if(ب paramب, Throwable paramThrowable, int paramInt)
  {
    super("Decoder init failed: [" + paramInt + "], " + paramب, paramThrowable);
    this.rY = null;
    this.rZ = Ɩ(paramInt);
  }
  
  public ҫ$if(ب paramب, Throwable paramThrowable, String paramString)
  {
    super("Decoder init failed: " + paramString + ", " + paramب, paramThrowable);
    this.rY = paramString;
    if (ผ.SDK_INT >= 21) {
      paramب = ˏ(paramThrowable);
    } else {
      paramب = null;
    }
    this.rZ = paramب;
  }
  
  private static String Ɩ(int paramInt)
  {
    String str;
    if (paramInt < 0) {
      str = "neg_";
    } else {
      str = "";
    }
    return "com.google.android.exoplayer.MediaCodecTrackRenderer_" + str + Math.abs(paramInt);
  }
  
  @TargetApi(21)
  private static String ˏ(Throwable paramThrowable)
  {
    if ((paramThrowable instanceof MediaCodec.CodecException)) {
      return ((MediaCodec.CodecException)paramThrowable).getDiagnosticInfo();
    }
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ò«.if
 * JD-Core Version:    0.7.0.1
 */