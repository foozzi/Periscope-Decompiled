package o;

import java.util.Date;

public class akp
{
  private final int bIE = 51200;
  private final int bIF = 40960;
  private final int bIG = 10240;
  private final double bIH = 8.0D;
  private final int bII = 640;
  private final double bIJ = 24.0D;
  private final long bIK = 10000L;
  private akp.ˊ bIL = new akp.ˊ(this, 5.0D);
  private akp.ˊ bIM = new akp.ˊ(this, 5.0D);
  private akp.ˋ bIN = new akp.ˋ(this, null);
  private akp.ˋ bIO = new akp.ˋ(this, null);
  private if bIP = new if(10);
  private int bIQ = 0;
  private int bIR = 0;
  private boolean bIS = true;
  private boolean bIT = false;
  private boolean bIU = false;
  private int bIV = 0;
  private int bIW = 25600;
  private double bIX = 24.0D;
  private double bIY = 0.0D;
  private Date bIZ = null;
  private boolean bJa = false;
  private boolean bJb = false;
  
  private void AE()
  {
    int j;
    int i;
    int k;
    if (!this.bIS)
    {
      j = this.bIQ;
      if ((this.bIT) && (this.bIR > 0) && (this.bIR < this.bIQ))
      {
        if (this.bIU)
        {
          this.bIS = true;
          i = this.bIR;
        }
        else
        {
          this.bIU = true;
          this.bIV = 0;
          i = j;
        }
      }
      else
      {
        i = j;
        if (this.bIU)
        {
          k = this.bIV + 1;
          this.bIV = k;
          i = j;
          if (k > 2)
          {
            this.bIU = false;
            i = j;
          }
        }
      }
      this.bIW = ((i * 8 / 10 - this.bIM.AM()) * 65 / 100);
      AF();
      AG();
      return;
    }
    Date localDate = new Date();
    if (this.bIZ == null)
    {
      this.bIZ = localDate;
      return;
    }
    if (localDate.getTime() - this.bIZ.getTime() > 10000L)
    {
      j = this.bIR;
      i = j;
      if (this.bIQ > 0)
      {
        i = j;
        if (this.bIQ < this.bIR) {
          i = this.bIQ;
        }
      }
      j = (i - this.bIM.AM()) * 5 / 10;
      i = j;
      if (j <= 0) {
        i = this.bIW;
      }
      j = this.bIW;
      k = this.bIL.AM();
      if ((k < j * 7 / 10) && (this.bIX >= 24.0D))
      {
        akk.ᐪ("RTMP", "Target/Actual kbits/s " + j * 8 / 1024 + "/" + k * 8 / 1024);
      }
      else if ((!this.bJa) && (i <= this.bIW))
      {
        j = i + 10240;
        i = j;
        if (this.bIQ > 0)
        {
          k = (this.bIQ * 8 / 10 - this.bIM.AM()) * 65 / 100;
          i = j;
          if (j > k) {
            i = k;
          }
        }
        this.bIW = i;
        AF();
        AG();
      }
      this.bIZ = localDate;
      this.bJa = false;
    }
  }
  
  private void AF()
  {
    int i;
    if (this.bIS) {
      i = 40960;
    } else {
      i = 51200;
    }
    if (this.bIW > i) {
      this.bIW = i;
    }
    if (this.bIW < 10240) {
      this.bIW = 10240;
    }
  }
  
  private void AG()
  {
    if (((!this.bIS) || (this.bIR > 0)) && (this.bIW < 15360.0D))
    {
      this.bIX = (this.bIW / 640);
      if (this.bIX < 8.0D) {
        this.bIX = 8.0D;
      }
    }
  }
  
  public int AC()
  {
    return this.bIQ;
  }
  
  public boolean AD()
  {
    return this.bJb;
  }
  
  public int AH()
  {
    return this.bIW;
  }
  
  public double AI()
  {
    return this.bIX;
  }
  
  public double AJ()
  {
    return 1.0D / this.bIL.AN();
  }
  
  public void AK()
  {
    akk.ᐪ("RTMP", "Upload rate: Mean " + (int)this.bIN.AQ() * 8 / 1024 + " StdDev " + (int)this.bIN.AR() * 8 / 1024 + " Min " + (int)this.bIN.AO() * 8 / 1024 + " Max " + (int)this.bIN.AP() * 8 / 1024);
    akk.ᐪ("RTMP", "FPS: " + this.bIO);
  }
  
  public boolean ʺ(int paramInt1, int paramInt2)
  {
    int i = this.bIW;
    double d = this.bIX;
    this.bIP.ᐝ(paramInt1);
    this.bIN.ᐝ(paramInt1);
    this.bIO.ᐝ(AJ());
    this.bIR = ((int)this.bIP.AL());
    this.bIT = true;
    if (paramInt2 > 0)
    {
      this.bIT = false;
      this.bJa = true;
      this.bJb = true;
    }
    AE();
    return (Math.abs(this.bIW - i) > 1024) || (d != this.bIX);
  }
  
  public void ˊ(int paramInt, double paramDouble)
  {
    this.bIL.ˊ(paramDouble / 1000.0D, paramInt);
  }
  
  public void ˋ(int paramInt, double paramDouble)
  {
    this.bIM.ˊ(paramDouble / 1000.0D, paramInt);
  }
  
  public boolean ˏ(double paramDouble)
  {
    if ((this.bIX == 0.0D) || (this.bIX >= 24.0D)) {
      return true;
    }
    if (this.bIY > 0.0D)
    {
      double d1 = 1.0D / this.bIX;
      double d2 = paramDouble - this.bIY;
      if ((d1 > 0.0D) && (d2 > 0.0D) && (d2 < d1)) {
        return false;
      }
    }
    this.bIY = paramDouble;
    return true;
  }
  
  public void ᐜ(int paramInt)
  {
    this.bIQ = paramInt;
    this.bIS = false;
    AE();
  }
  
  class if
  {
    private double[] bJc;
    private int count;
    private final int uU;
    
    public if(int paramInt)
    {
      this.uU = paramInt;
      this.bJc = new double[this.uU];
      this.count = 0;
    }
    
    public double AL()
    {
      double d1 = 0.0D;
      int i = 0;
      while (i < this.uU)
      {
        double d2 = d1;
        if (this.bJc[i] < d1) {
          d2 = this.bJc[i];
        }
        i += 1;
        d1 = d2;
      }
      return d1;
    }
    
    public void ᐝ(double paramDouble)
    {
      int i = this.count;
      int j = this.uU;
      this.bJc[(i % j)] = paramDouble;
      this.count += 1;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.akp
 * JD-Core Version:    0.7.0.1
 */