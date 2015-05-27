package o;

import android.util.SparseArray;

class Ỳ$if
  extends Ỳ.ˎ
{
  private final ন xA = new ন(new byte[4]);
  
  public Ỳ$if(Ỳ paramỲ)
  {
    super(null);
  }
  
  public void ˊ(প paramপ, boolean paramBoolean, ᒬ paramᒬ)
  {
    if (paramBoolean) {
      paramপ.ʰ(paramপ.readUnsignedByte());
    }
    paramপ.ˋ(this.xA, 3);
    this.xA.ɪ(12);
    int i = this.xA.ɾ(12);
    paramপ.ʰ(5);
    int j = (i - 9) / 4;
    i = 0;
    while (i < j)
    {
      paramপ.ˋ(this.xA, 4);
      this.xA.ɪ(19);
      int k = this.xA.ɾ(13);
      this.xB.xv.put(k, new Ỳ.ˋ(this.xB));
      i += 1;
    }
  }
  
  public void ᒮ() {}
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á»².if
 * JD-Core Version:    0.7.0.1
 */