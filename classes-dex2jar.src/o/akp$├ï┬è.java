package o;

import java.util.Vector;

class akp$ˊ
{
  private final double bJe;
  private double bJf = 0.0D;
  private long bJg = 0L;
  private Vector<akp.ˎ> bJh = new Vector();
  
  public akp$ˊ(akp paramakp, double paramDouble)
  {
    this.bJe = paramDouble;
  }
  
  public int AM()
  {
    int i = 0;
    if (this.bJf > 0.0D) {
      i = (int)(this.bJg / this.bJf);
    }
    return i;
  }
  
  public double AN()
  {
    double d = 0.0D;
    if (this.bJh.size() > 1) {
      d = this.bJf / (this.bJh.size() - 1);
    }
    return d;
  }
  
  public void ˊ(double paramDouble, int paramInt)
  {
    this.bJh.add(new akp.ˎ(this.bJd, paramDouble, paramInt));
    this.bJg += paramInt;
    while (this.bJh.size() > 1)
    {
      akp.ˎ localˎ = (akp.ˎ)this.bJh.get(0);
      this.bJf = (paramDouble - localˎ.bJn);
      if (this.bJf < this.bJe) {
        return;
      }
      this.bJg -= localˎ.bJo;
      this.bJh.remove(0);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.akp.Ë
 * JD-Core Version:    0.7.0.1
 */