package o;

import android.net.Uri;

class ᒭ$if
  implements ס.ˋ
{
  private final ϒ tF;
  private volatile boolean tG;
  private final ᒮ uH;
  private boolean uI;
  private final ᒎ ub;
  private final ѕ uc;
  private final int ud;
  private final Uri uri;
  
  public ᒭ$if(Uri paramUri, ϒ paramϒ, ᒎ paramᒎ, ѕ paramѕ, int paramInt, long paramLong)
  {
    this.uri = ((Uri)ړ.יּ(paramUri));
    this.tF = ((ϒ)ړ.יּ(paramϒ));
    this.ub = ((ᒎ)ړ.יּ(paramᒎ));
    this.uc = ((ѕ)ړ.יּ(paramѕ));
    this.ud = paramInt;
    this.uH = new ᒮ();
    this.uH.tU = paramLong;
    this.uI = true;
  }
  
  public void ঽ()
  {
    this.tG = true;
  }
  
  public boolean ก()
  {
    return this.tG;
  }
  
  public void კ()
  {
    if (this.uI)
    {
      this.ub.ᒮ();
      this.uI = false;
    }
    int j;
    for (int i = 0; (i == 0) && (!this.tG); i = j)
    {
      ᐹ localᐹ2 = null;
      j = i;
      ᐹ localᐹ1 = localᐹ2;
      try
      {
        long l3 = this.uH.tU;
        j = i;
        localᐹ1 = localᐹ2;
        long l2 = this.tF.ˊ(new к(this.uri, l3, -1L, null));
        long l1 = l2;
        if (l2 != -1L) {
          l1 = l2 + l3;
        }
        j = i;
        localᐹ1 = localᐹ2;
        localᐹ2 = new ᐹ(this.tF, l3, l1);
        while (i == 0)
        {
          j = i;
          localᐹ1 = localᐹ2;
          if (this.tG) {
            break;
          }
          j = i;
          localᐹ1 = localᐹ2;
          this.uc.ȋ(this.ud);
          j = i;
          localᐹ1 = localᐹ2;
          i = this.ub.ˊ(localᐹ2, this.uH);
        }
        if (i == 1)
        {
          j = 0;
        }
        else
        {
          j = i;
          if (localᐹ2 != null)
          {
            this.uH.tU = localᐹ2.getPosition();
            j = i;
          }
        }
        this.tF.close();
      }
      finally
      {
        if ((j != 1) && (localᐹ1 != null)) {
          this.uH.tU = localᐹ1.getPosition();
        }
        this.tF.close();
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á­.if
 * JD-Core Version:    0.7.0.1
 */