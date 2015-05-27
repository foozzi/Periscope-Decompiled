package o;

import android.media.MediaCodec.CryptoException;
import android.os.Handler;
import android.view.Surface;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

public class aaq
  implements ʢ.ˋ, ঌ, 忄.if, ʭ.if, ԅ.if, з.if, ĉ
{
  private int[] buA;
  private aaq.ʻ buB;
  private if buC;
  private aaq.ˋ buD;
  private aaq.ˊ buE;
  private final aux buo;
  private final ʢ bup;
  private final য buq;
  private final CopyOnWriteArrayList<aaq.ˏ> bur;
  private int bus;
  private int but;
  private boolean buu;
  private aaq.ˎ buv;
  private ڹ buw;
  private ব bux;
  private ก[] buy;
  private String[][] buz;
  private final Handler eN;
  private Surface sj;
  
  public aaq(aux paramaux)
  {
    this.buo = paramaux;
    this.bup = ʢ.ˊ.ʾ(5, 1000, 5000);
    this.bup.ˊ(this);
    this.buq = new য(this.bup);
    this.eN = new Handler();
    this.bur = new CopyOnWriteArrayList();
    this.but = 1;
    this.bus = 1;
    this.buA = new int[5];
    this.buA[2] = -1;
  }
  
  private void vF()
  {
    boolean bool = this.bup.ｔ();
    int i = ｉ();
    if ((this.buu != bool) || (this.but != i))
    {
      Iterator localIterator = this.bur.iterator();
      while (localIterator.hasNext()) {
        ((aaq.ˏ)localIterator.next()).ˎ(bool, i);
      }
      this.buu = bool;
      this.but = i;
    }
  }
  
  private void ᑋ(boolean paramBoolean)
  {
    if (this.buw == null) {
      return;
    }
    if (paramBoolean)
    {
      this.bup.ˋ(this.buw, 1, this.sj);
      return;
    }
    this.bup.ˊ(this.buw, 1, this.sj);
  }
  
  private void ﾞ(int paramInt, boolean paramBoolean)
  {
    if (this.buy == null) {
      return;
    }
    int i = this.buA[paramInt];
    if (i == -1)
    {
      this.bup.ᐧ(paramInt, false);
      return;
    }
    if (this.buy[paramInt] == null)
    {
      this.bup.ᐧ(paramInt, paramBoolean);
      return;
    }
    boolean bool = this.bup.ｔ();
    this.bup.ᑊ(false);
    this.bup.ᐧ(paramInt, false);
    this.bup.ˊ(this.buy[paramInt], 1, Integer.valueOf(i));
    this.bup.ᐧ(paramInt, paramBoolean);
    this.bup.ᑊ(bool);
  }
  
  public long getDuration()
  {
    return this.bup.getDuration();
  }
  
  public void prepare()
  {
    if (this.bus == 3) {
      this.bup.stop();
    }
    if (this.buv != null) {
      this.buv.cancel();
    }
    this.bux = null;
    this.buw = null;
    this.buy = null;
    this.bus = 2;
    vF();
    this.buv = new aaq.ˎ(this, null);
    this.buo.ˊ(this, this.buv);
  }
  
  public void release()
  {
    if (this.buv != null)
    {
      this.buv.cancel();
      this.buv = null;
    }
    this.bus = 1;
    this.sj = null;
    this.bup.release();
  }
  
  public void seekTo(long paramLong)
  {
    this.bup.seekTo(paramLong);
  }
  
  public void setSurface(Surface paramSurface)
  {
    this.sj = paramSurface;
    ᑋ(false);
  }
  
  public void stop()
  {
    this.bup.stop();
  }
  
  Handler vD()
  {
    return this.eN;
  }
  
  ﾏ.if<Map<String, Object>> vE()
  {
    return new aar(this);
  }
  
  void ʼ(Exception paramException)
  {
    this.buv = null;
    if (this.buD != null) {
      this.buD.ʻ(paramException);
    }
    Iterator localIterator = this.bur.iterator();
    while (localIterator.hasNext()) {
      ((aaq.ˏ)localIterator.next()).ᐝ(paramException);
    }
    this.bus = 1;
    vF();
  }
  
  public void ˊ(int paramInt1, int paramInt2, float paramFloat)
  {
    Iterator localIterator = this.bur.iterator();
    while (localIterator.hasNext()) {
      ((aaq.ˏ)localIterator.next()).ˊ(paramInt1, paramInt2, paramFloat);
    }
  }
  
  public void ˊ(int paramInt1, long paramLong, int paramInt2, int paramInt3, ব paramব, int paramInt4, int paramInt5)
  {
    if (this.buE != null) {
      this.buE.ˊ(paramInt1, paramLong, paramInt2, paramInt3, paramব, paramInt4, paramInt5);
    }
  }
  
  public void ˊ(int paramInt1, long paramLong1, int paramInt2, int paramInt3, ব paramব, int paramInt4, int paramInt5, long paramLong2, long paramLong3)
  {
    if (this.buE != null) {
      this.buE.ˊ(paramInt1, paramLong1, paramInt2, paramInt3, paramব, paramInt4, paramInt5, paramLong2, paramLong3);
    }
  }
  
  public void ˊ(int paramInt, IOException paramIOException)
  {
    if (this.buD != null) {
      this.buD.ˊ(paramInt, paramIOException);
    }
  }
  
  public void ˊ(int paramInt1, ব paramব, int paramInt2, int paramInt3)
  {
    if (this.buE == null) {
      return;
    }
    if (paramInt1 == 0)
    {
      this.bux = paramব;
      this.buE.ˊ(paramব, paramInt2, paramInt3);
      return;
    }
    if (paramInt1 == 1) {
      this.buE.ˋ(paramব, paramInt2, paramInt3);
    }
  }
  
  public void ˊ(Surface paramSurface) {}
  
  public void ˊ(if paramif)
  {
    this.buC = paramif;
  }
  
  public void ˊ(aaq.ʻ paramʻ)
  {
    this.buB = paramʻ;
  }
  
  public void ˊ(aaq.ˊ paramˊ)
  {
    this.buE = paramˊ;
  }
  
  public void ˊ(aaq.ˋ paramˋ)
  {
    this.buD = paramˋ;
  }
  
  public void ˊ(aaq.ˏ paramˏ)
  {
    this.bur.add(paramˏ);
  }
  
  public void ˊ(ʡ paramʡ)
  {
    this.bus = 1;
    Iterator localIterator = this.bur.iterator();
    while (localIterator.hasNext()) {
      ((aaq.ˏ)localIterator.next()).ᐝ(paramʡ);
    }
  }
  
  public void ˊ(boolean paramBoolean, int paramInt)
  {
    vF();
  }
  
  void ˊ(String[][] paramArrayOfString, ก[] paramArrayOfก, ڹ[] paramArrayOfڹ)
  {
    this.buv = null;
    Object localObject = paramArrayOfString;
    if (paramArrayOfString == null) {
      localObject = new String[5][];
    }
    paramArrayOfString = paramArrayOfก;
    if (paramArrayOfก == null) {
      paramArrayOfString = new ก[5];
    }
    int i = 0;
    while (i < 5)
    {
      if (paramArrayOfڹ[i] == null)
      {
        paramArrayOfڹ[i] = new ʈ();
      }
      else if (localObject[i] == null)
      {
        int j;
        if (paramArrayOfString[i] == null) {
          j = 1;
        } else {
          j = paramArrayOfString[i].getTrackCount();
        }
        localObject[i] = new String[j];
      }
      i += 1;
    }
    this.buz = ((String[][])localObject);
    this.buw = paramArrayOfڹ[0];
    this.buy = paramArrayOfString;
    ᑋ(false);
    ﾞ(0, true);
    ﾞ(1, true);
    ﾞ(2, true);
    this.bup.ˊ(paramArrayOfڹ);
    this.bus = 3;
  }
  
  public void ˋ(int paramInt, long paramLong1, long paramLong2)
  {
    if (this.buE != null) {
      this.buE.ˋ(paramInt, paramLong1, paramLong2);
    }
  }
  
  public void ˋ(MediaCodec.CryptoException paramCryptoException)
  {
    if (this.buD != null) {
      this.buD.ˋ(paramCryptoException);
    }
  }
  
  public void ˋ(String paramString, long paramLong1, long paramLong2)
  {
    if (this.buE != null) {
      this.buE.ˋ(paramString, paramLong1, paramLong2);
    }
  }
  
  public void ˋ(ۊ.ˋ paramˋ)
  {
    if (this.buD != null) {
      this.buD.ˋ(paramˋ);
    }
  }
  
  public void ˋ(ۊ.ˎ paramˎ)
  {
    if (this.buD != null) {
      this.buD.ˋ(paramˎ);
    }
  }
  
  public void ˎ(int paramInt, long paramLong)
  {
    if (this.buE != null) {
      this.buE.ˎ(paramInt, paramLong);
    }
  }
  
  public void ˎ(ҫ.if paramif)
  {
    if (this.buD != null) {
      this.buD.ˎ(paramif);
    }
  }
  
  public void ᐝ(int paramInt, long paramLong) {}
  
  public void ᑊ(boolean paramBoolean)
  {
    this.bup.ᑊ(paramBoolean);
  }
  
  public void ⁱ(String paramString)
  {
    ﯿ(paramString);
  }
  
  void ﯿ(String paramString)
  {
    if ((this.buB == null) || (this.buA[2] == -1)) {
      return;
    }
    this.buB.ⁱ(paramString);
  }
  
  public int ｉ()
  {
    if (this.bus == 2) {
      return 2;
    }
    int i = this.bup.ｉ();
    if ((this.bus == 3) && (this.bus == 1)) {
      return 2;
    }
    return i;
  }
  
  public long ｖ()
  {
    return this.bup.ｖ();
  }
  
  public void ｴ() {}
  
  public static abstract interface aux
  {
    public abstract void ˊ(aaq paramaaq, aaq.ᐝ paramᐝ);
  }
  
  public static abstract interface if
  {
    public abstract void ˏ(Map<String, Object> paramMap);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.aaq
 * JD-Core Version:    0.7.0.1
 */