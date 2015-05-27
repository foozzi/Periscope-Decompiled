package o;

import android.util.SparseArray;
import android.util.SparseBooleanArray;

class Ỳ$ˋ
  extends Ỳ.ˎ
{
  private final ন xI = new ন(new byte[5]);
  
  public Ỳ$ˋ(Ỳ paramỲ)
  {
    super(null);
  }
  
  public void ˊ(প paramপ, boolean paramBoolean, ᒬ paramᒬ)
  {
    if (paramBoolean) {
      paramপ.ʰ(paramপ.readUnsignedByte());
    }
    paramপ.ˋ(this.xI, 3);
    this.xI.ɪ(12);
    int i = this.xI.ɾ(12);
    paramপ.ʰ(7);
    paramপ.ˋ(this.xI, 2);
    this.xI.ɪ(4);
    int j = this.xI.ɾ(12);
    paramপ.ʰ(j);
    if (this.xB.xz == null) {
      this.xB.xz = new ᴒ(paramᒬ.ר(21));
    }
    i = i - 9 - j - 4;
    while (i > 0)
    {
      paramপ.ˋ(this.xI, 5);
      j = this.xI.ɾ(8);
      this.xI.ɪ(3);
      int k = this.xI.ɾ(13);
      this.xI.ɪ(4);
      int m = this.xI.ɾ(12);
      paramপ.ʰ(m);
      i -= m + 5;
      if (!this.xB.xt.get(j))
      {
        Object localObject = null;
        switch (j)
        {
        default: 
          break;
        case 15: 
          localObject = new ᘢ(paramᒬ.ר(15));
          break;
        case 129: 
        case 135: 
          if (this.xB.xu.get(j)) {
            localObject = new ᔫ(paramᒬ.ר(j));
          }
          break;
        case 27: 
          localObject = new ᴫ(paramᒬ.ר(256));
          localObject = new ᚆ(paramᒬ.ר(27), (ᴫ)localObject);
          break;
        case 21: 
          localObject = this.xB.xz;
          if (localObject != null)
          {
            this.xB.xt.put(j, true);
            this.xB.xv.put(k, new Ỳ.ˊ(this.xB, (ᚁ)localObject));
          }
          break;
        }
      }
    }
    paramᒬ.ᒯ();
  }
  
  public void ᒮ() {}
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á»².Ë
 * JD-Core Version:    0.7.0.1
 */