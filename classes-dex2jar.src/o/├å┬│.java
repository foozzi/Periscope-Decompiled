package o;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import java.io.IOException;
import java.util.TreeSet;

public class Ƴ
  extends ڹ
  implements Handler.Callback
{
  private int rM;
  private boolean rO;
  private long rl;
  private final ڒ rs;
  private final ڋ rt;
  private final م ru;
  private final ƫ zG;
  private final ĉ zH;
  private final Handler zI;
  private final StringBuilder zJ;
  private final TreeSet<ż> zK;
  private int zL;
  private int zM;
  private String zN;
  private String zO;
  
  public Ƴ(ڒ paramڒ, ĉ paramĉ, Looper paramLooper)
  {
    this.rs = ((ڒ)ړ.יּ(paramڒ));
    this.zH = ((ĉ)ړ.יּ(paramĉ));
    if (paramLooper == null) {
      paramڒ = null;
    } else {
      paramڒ = new Handler(paramLooper, this);
    }
    this.zI = paramڒ;
    this.zG = new ƫ();
    this.ru = new م();
    this.rt = new ڋ(1);
    this.zJ = new StringBuilder();
    this.zK = new TreeSet();
  }
  
  private void ˊ(Ŷ paramŶ)
  {
    switch (paramŶ.zv)
    {
    default: 
      break;
    case 37: 
      this.zM = 2;
      ﻨ(1);
      return;
    case 38: 
      this.zM = 3;
      ﻨ(1);
      return;
    case 39: 
      this.zM = 4;
      ﻨ(1);
      return;
    case 32: 
      ﻨ(2);
      return;
    case 41: 
      ﻨ(3);
      return;
    }
    if (this.zL == 0) {
      return;
    }
    switch (paramŶ.zv)
    {
    default: 
    case 44: 
      this.zN = null;
      if ((this.zL == 1) || (this.zL == 3)) {
        this.zJ.setLength(0);
      }
      return;
    case 46: 
      this.zJ.setLength(0);
      return;
    case 47: 
      this.zN = ｕ();
      this.zJ.setLength(0);
      return;
    case 45: 
      ﻡ();
      return;
    case 33: 
      if (this.zJ.length() > 0) {
        this.zJ.setLength(this.zJ.length() - 1);
      }
      return;
    }
  }
  
  private void ˊ(ƨ paramƨ)
  {
    if (this.zL != 0) {
      this.zJ.append(paramƨ.zy);
    }
  }
  
  private void ˋ(ż paramż)
  {
    int j = paramż.zx.length;
    if (j == 0) {
      return;
    }
    int i = 0;
    while (i < j)
    {
      Object localObject = paramż.zx[i];
      if (((č)localObject).type == 0)
      {
        localObject = (Ŷ)localObject;
        if (((Ŷ)localObject).忄()) {
          ˊ((Ŷ)localObject);
        } else if (((Ŷ)localObject).אּ()) {
          ﺣ();
        }
      }
      else
      {
        ˊ((ƨ)localObject);
      }
      i += 1;
    }
    if ((this.zL == 1) || (this.zL == 3)) {
      this.zN = ｕ();
    }
  }
  
  private void ˌ(long paramLong)
  {
    this.rl = paramLong;
    this.rO = false;
    this.zK.clear();
    ｚ();
    this.zM = 4;
    ﻨ(0);
    ﹶ(null);
  }
  
  private void ﹶ(String paramString)
  {
    if (ผ.ʻ(this.zO, paramString)) {
      return;
    }
    this.zO = paramString;
    if (this.zI != null)
    {
      this.zI.obtainMessage(0, paramString).sendToTarget();
      return;
    }
    ﹺ(paramString);
  }
  
  private void ﹺ(String paramString)
  {
    this.zH.ⁱ(paramString);
  }
  
  private void ﺔ()
  {
    if (this.rt.sJ > this.rl + 5000000L) {
      return;
    }
    ż localż = this.zG.ˏ(this.rt);
    ｚ();
    if (localż != null) {
      this.zK.add(localż);
    }
  }
  
  private void ﺣ()
  {
    ﻡ();
  }
  
  private void ﻡ()
  {
    int i = this.zJ.length();
    if ((i > 0) && (this.zJ.charAt(i - 1) != '\n')) {
      this.zJ.append('\n');
    }
  }
  
  private void ﻨ(int paramInt)
  {
    if (this.zL == paramInt) {
      return;
    }
    this.zL = paramInt;
    this.zJ.setLength(0);
    if ((paramInt == 1) || (paramInt == 0)) {
      this.zN = null;
    }
  }
  
  private String ｕ()
  {
    int j = this.zJ.length();
    if (j == 0) {
      return null;
    }
    int i;
    if (this.zJ.charAt(j - 1) == '\n') {
      i = 1;
    } else {
      i = 0;
    }
    if ((j == 1) && (i != 0)) {
      return null;
    }
    if (i != 0) {
      i = j - 1;
    } else {
      i = j;
    }
    if (this.zL != 1) {
      return this.zJ.substring(0, i);
    }
    int m = 0;
    j = i;
    int k = 0;
    while ((k < this.zM) && (j != -1))
    {
      j = this.zJ.lastIndexOf("\n", j - 1);
      k += 1;
    }
    k = m;
    if (j != -1) {
      k = j + 1;
    }
    this.zJ.delete(0, k);
    return this.zJ.substring(0, i - k);
  }
  
  private void ｚ()
  {
    this.rt.sJ = -1L;
    this.rt.ب();
  }
  
  private boolean ｫ()
  {
    return this.rt.sJ != -1L;
  }
  
  public boolean handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default: 
      break;
    case 0: 
      ﹺ((String)paramMessage.obj);
      return true;
    }
    return false;
  }
  
  protected void seekTo(long paramLong)
  {
    this.rs.ﹳ(paramLong);
    ˌ(paramLong);
  }
  
  protected void ɜ()
  {
    this.rs.ג(this.rM);
  }
  
  protected int ˉ(long paramLong)
  {
    try
    {
      boolean bool = this.rs.ᐧ(paramLong);
      if (!bool) {
        return 0;
      }
    }
    catch (IOException localIOException)
    {
      throw new ʡ(localIOException);
    }
    int i = 0;
    while (i < this.rs.getTrackCount())
    {
      if (this.zG.ᵢ(this.rs.ϊ(i).mimeType))
      {
        this.rM = i;
        return 1;
      }
      i += 1;
    }
    return -1;
  }
  
  protected void ˊ(long paramLong1, long paramLong2)
  {
    this.rl = paramLong1;
    try
    {
      this.rs.ᐨ(paramLong1);
    }
    catch (IOException localIOException1)
    {
      throw new ʡ(localIOException1);
    }
    if (ｫ()) {
      ﺔ();
    }
    int i;
    if (this.rO) {
      i = -1;
    } else {
      i = -3;
    }
    while ((!ｫ()) && (i == -3)) {
      try
      {
        i = this.rs.ˊ(this.rM, paramLong1, this.ru, this.rt, false);
        if (i == -3) {
          ﺔ();
        } else if (i == -1) {
          this.rO = true;
        }
      }
      catch (IOException localIOException2)
      {
        throw new ʡ(localIOException2);
      }
    }
    while (!this.zK.isEmpty())
    {
      if (((ż)this.zK.first()).sJ > this.rl) {
        return;
      }
      ż localż = (ż)this.zK.pollFirst();
      ˋ(localż);
      if (!localż.zw) {
        ﹶ(this.zN);
      }
    }
  }
  
  protected void ˊ(long paramLong, boolean paramBoolean)
  {
    this.rs.ˏ(this.rM, paramLong);
    ˌ(paramLong);
  }
  
  protected boolean ﮈ()
  {
    return this.rO;
  }
  
  protected boolean ﺓ()
  {
    return true;
  }
  
  protected long ﻤ()
  {
    return this.rs.ϊ(this.rM).re;
  }
  
  protected long ﻥ()
  {
    return -3L;
  }
  
  protected long ｆ()
  {
    return this.rl;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Æ³
 * JD-Core Version:    0.7.0.1
 */