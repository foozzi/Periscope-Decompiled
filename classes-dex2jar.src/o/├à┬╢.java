package o;

final class Ŷ
  extends č
{
  public final byte zu;
  public final byte zv;
  
  protected Ŷ(byte paramByte1, byte paramByte2)
  {
    super(0);
    this.zu = paramByte1;
    this.zv = paramByte2;
  }
  
  public boolean 忄()
  {
    return ((this.zu == 20) || (this.zu == 28)) && (this.zv >= 32) && (this.zv <= 47);
  }
  
  public boolean אּ()
  {
    return (this.zu >= 16) && (this.zu <= 31) && (this.zv >= 64) && (this.zv <= 127);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Å¶
 * JD-Core Version:    0.7.0.1
 */