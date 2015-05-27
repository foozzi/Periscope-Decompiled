package o;

import java.text.DecimalFormat;

class akp$ˋ
{
  private int bJi = 0;
  private double bJj = 0.0D;
  private double bJk = 0.0D;
  private double bJl = 0.0D;
  private double bJm = 0.0D;
  
  private akp$ˋ(akp paramakp) {}
  
  public double AO()
  {
    return this.bJj;
  }
  
  public double AP()
  {
    return this.bJk;
  }
  
  public double AQ()
  {
    double d = 0.0D;
    if (this.bJi > 0) {
      d = this.bJl / this.bJi;
    }
    return d;
  }
  
  public double AR()
  {
    double d = 0.0D;
    if (this.bJi > 1) {
      d = Math.sqrt((this.bJm - this.bJl * this.bJl / this.bJi) / (this.bJi - 1));
    }
    return d;
  }
  
  public String toString()
  {
    DecimalFormat localDecimalFormat = new DecimalFormat("0.###");
    return "Mean " + localDecimalFormat.format(AQ()) + " StdDev " + localDecimalFormat.format(AR()) + " Min " + localDecimalFormat.format(AO()) + " Max " + localDecimalFormat.format(AP());
  }
  
  public void ᐝ(double paramDouble)
  {
    this.bJi += 1;
    this.bJl += paramDouble;
    this.bJm += paramDouble * paramDouble;
    if (paramDouble > this.bJk) {
      this.bJk = paramDouble;
    }
    if ((this.bJi == 0) || (paramDouble < this.bJj)) {
      this.bJj = paramDouble;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.akp.Ë
 * JD-Core Version:    0.7.0.1
 */