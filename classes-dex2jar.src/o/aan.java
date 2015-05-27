package o;

import android.media.MediaCodec.CryptoException;
import android.os.SystemClock;
import android.util.Log;
import java.io.IOException;
import java.text.NumberFormat;
import java.util.Locale;

public class aan
  implements aaq.ˏ, aaq.ˊ, aaq.ˋ
{
  private static final NumberFormat bui = NumberFormat.getInstance(Locale.US);
  private long buj;
  private long[] buk = new long[5];
  
  static
  {
    bui.setMinimumFractionDigits(2);
    bui.setMaximumFractionDigits(2);
  }
  
  private String vC()
  {
    return ɩ(SystemClock.elapsedRealtime() - this.buj);
  }
  
  private String Ļ(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      break;
    case 3: 
      return "B";
    case 5: 
      return "E";
    case 1: 
      return "I";
    case 2: 
      return "P";
    case 4: 
      return "R";
    }
    return "?";
  }
  
  private String ɩ(long paramLong)
  {
    return bui.format((float)paramLong / 1000.0F);
  }
  
  private void ˊ(String paramString, Exception paramException)
  {
    Log.e("EventLogger", "internalError [" + vC() + ", " + paramString + "]", paramException);
  }
  
  public void vB()
  {
    this.buj = SystemClock.elapsedRealtime();
    Log.d("EventLogger", "start [0]");
  }
  
  public void ʻ(Exception paramException)
  {
    ˊ("rendererInitError", paramException);
  }
  
  public void ˊ(int paramInt1, int paramInt2, float paramFloat)
  {
    Log.d("EventLogger", "videoSizeChanged [" + paramInt1 + ", " + paramInt2 + ", " + paramFloat + "]");
  }
  
  public void ˊ(int paramInt1, long paramLong, int paramInt2, int paramInt3, ব paramব, int paramInt4, int paramInt5)
  {
    this.buk[paramInt1] = SystemClock.elapsedRealtime();
    if (ล.isTagEnabled("EventLogger")) {
      Log.v("EventLogger", "loadStart [" + vC() + ", " + paramInt1 + ", " + paramInt2 + ", " + paramInt4 + ", " + paramInt5 + "]");
    }
  }
  
  public void ˊ(int paramInt1, long paramLong1, int paramInt2, int paramInt3, ব paramব, int paramInt4, int paramInt5, long paramLong2, long paramLong3)
  {
    if (ล.isTagEnabled("EventLogger"))
    {
      paramLong1 = SystemClock.elapsedRealtime();
      paramLong2 = this.buk[paramInt1];
      Log.v("EventLogger", "loadEnd [" + vC() + ", " + paramInt1 + ", " + (paramLong1 - paramLong2) + "]");
    }
  }
  
  public void ˊ(int paramInt, IOException paramIOException)
  {
    ˊ("loadError", paramIOException);
  }
  
  public void ˊ(ব paramব, int paramInt1, int paramInt2)
  {
    Log.d("EventLogger", "videoFormat [" + vC() + ", " + paramব.id + ", " + Integer.toString(paramInt1) + "]");
  }
  
  public void ˋ(int paramInt, long paramLong1, long paramLong2)
  {
    Log.d("EventLogger", "bandwidth [" + vC() + ", " + paramLong1 + ", " + ɩ(paramInt) + ", " + paramLong2 + "]");
  }
  
  public void ˋ(MediaCodec.CryptoException paramCryptoException)
  {
    ˊ("cryptoError", paramCryptoException);
  }
  
  public void ˋ(String paramString, long paramLong1, long paramLong2)
  {
    Log.d("EventLogger", "decoderInitialized [" + vC() + "]");
  }
  
  public void ˋ(ۊ.ˋ paramˋ)
  {
    ˊ("audioTrackInitializationError", paramˋ);
  }
  
  public void ˋ(ۊ.ˎ paramˎ)
  {
    ˊ("audioTrackWriteError", paramˎ);
  }
  
  public void ˋ(ব paramব, int paramInt1, int paramInt2)
  {
    Log.d("EventLogger", "audioFormat [" + vC() + ", " + paramব.id + ", " + Integer.toString(paramInt1) + "]");
  }
  
  public void ˎ(int paramInt, long paramLong)
  {
    Log.d("EventLogger", "droppedFrames [" + vC() + ", " + paramInt + "]");
  }
  
  public void ˎ(ҫ.if paramif)
  {
    ˊ("decoderInitializationError", paramif);
  }
  
  public void ˎ(boolean paramBoolean, int paramInt)
  {
    Log.d("EventLogger", "state [" + vC() + ", " + paramBoolean + ", " + Ļ(paramInt) + "]");
  }
  
  public void ᐝ(Exception paramException)
  {
    Log.e("EventLogger", "playerFailed [" + vC() + "]", paramException);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.aan
 * JD-Core Version:    0.7.0.1
 */