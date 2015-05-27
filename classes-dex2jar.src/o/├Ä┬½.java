package o;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

final class Ϋ
  implements ʢ
{
  private final Handler qK;
  private final κ qL;
  private final CopyOnWriteArraySet<ʢ.ˋ> qM;
  private final boolean[] qN;
  private boolean qO;
  private int qP;
  private int qQ;
  
  @SuppressLint({"HandlerLeak"})
  public Ϋ(int paramInt1, int paramInt2, int paramInt3)
  {
    Log.i("ExoPlayerImpl", "Init 1.3.3");
    this.qO = false;
    this.qP = 1;
    this.qM = new CopyOnWriteArraySet();
    this.qN = new boolean[paramInt1];
    paramInt1 = 0;
    while (paramInt1 < this.qN.length)
    {
      this.qN[paramInt1] = true;
      paramInt1 += 1;
    }
    this.qK = new ε(this);
    this.qL = new κ(this.qK, this.qO, this.qN, paramInt2, paramInt3);
  }
  
  public long getBufferedPosition()
  {
    return this.qL.getBufferedPosition();
  }
  
  public long getDuration()
  {
    return this.qL.getDuration();
  }
  
  public void release()
  {
    this.qL.release();
    this.qK.removeCallbacksAndMessages(null);
  }
  
  public void seekTo(long paramLong)
  {
    this.qL.seekTo(paramLong);
  }
  
  public void stop()
  {
    this.qL.stop();
  }
  
  void ˊ(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default: 
    case 1: 
      this.qP = paramMessage.arg1;
      paramMessage = this.qM.iterator();
      while (paramMessage.hasNext()) {
        ((ʢ.ˋ)paramMessage.next()).ˊ(this.qO, this.qP);
      }
      return;
    case 2: 
      this.qQ -= 1;
      if (this.qQ == 0)
      {
        paramMessage = this.qM.iterator();
        while (paramMessage.hasNext()) {
          ((ʢ.ˋ)paramMessage.next()).ｴ();
        }
        return;
      }
      break;
    case 3: 
      paramMessage = (ʡ)paramMessage.obj;
      Iterator localIterator = this.qM.iterator();
      while (localIterator.hasNext()) {
        ((ʢ.ˋ)localIterator.next()).ˊ(paramMessage);
      }
    }
  }
  
  public void ˊ(ʢ.if paramif, int paramInt, Object paramObject)
  {
    this.qL.ˊ(paramif, paramInt, paramObject);
  }
  
  public void ˊ(ʢ.ˋ paramˋ)
  {
    this.qM.add(paramˋ);
  }
  
  public void ˊ(ڹ... paramVarArgs)
  {
    this.qL.ˊ(paramVarArgs);
  }
  
  public void ˋ(ʢ.if paramif, int paramInt, Object paramObject)
  {
    this.qL.ˋ(paramif, paramInt, paramObject);
  }
  
  public void ᐧ(int paramInt, boolean paramBoolean)
  {
    if (this.qN[paramInt] != paramBoolean)
    {
      this.qN[paramInt] = paramBoolean;
      this.qL.ᐧ(paramInt, paramBoolean);
    }
  }
  
  public void ᑊ(boolean paramBoolean)
  {
    if (this.qO != paramBoolean)
    {
      this.qO = paramBoolean;
      this.qQ += 1;
      this.qL.ᑊ(paramBoolean);
      Iterator localIterator = this.qM.iterator();
      while (localIterator.hasNext()) {
        ((ʢ.ˋ)localIterator.next()).ˊ(paramBoolean, this.qP);
      }
    }
  }
  
  public int ｉ()
  {
    return this.qP;
  }
  
  public boolean ｔ()
  {
    return this.qO;
  }
  
  public long ｖ()
  {
    return this.qL.ｖ();
  }
  
  public int ｬ()
  {
    long l1 = getBufferedPosition();
    long l2 = getDuration();
    if ((l1 == -1L) || (l2 == -1L)) {
      return 0;
    }
    if (l2 == 0L) {
      l1 = 100L;
    } else {
      l1 = 100L * l1 / l2;
    }
    return (int)l1;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Î«
 * JD-Core Version:    0.7.0.1
 */