package o;

import java.util.List;

public final class ῗ
  extends ゞ
{
  public final long re;
  public final int version;
  public final boolean xW;
  public final int yk;
  public final int yl;
  public final List<ῗ.if> ym;
  
  public ῗ(String paramString, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean, List<ῗ.if> paramList)
  {
    super(paramString, 1);
    this.yk = paramInt1;
    this.yl = paramInt2;
    this.version = paramInt3;
    this.xW = paramBoolean;
    this.ym = paramList;
    if (!paramList.isEmpty())
    {
      paramString = (ῗ.if)paramList.get(paramList.size() - 1);
      this.re = (paramString.tN + (paramString.yo * 1000000.0D));
      return;
    }
    this.re = 0L;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á¿
 * JD-Core Version:    0.7.0.1
 */