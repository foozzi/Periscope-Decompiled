package o;

import android.content.Context;

public class amu
  implements ale
{
  private final ale bNv;
  private final ale bNw;
  private ale bNx;
  
  public amu(ale paramale1, ale paramale2)
  {
    this.bNv = paramale1;
    this.bNw = paramale2;
    this.bNx = this.bNv;
  }
  
  private void toggle()
  {
    if (this.bNx == this.bNv)
    {
      this.bNx = this.bNw;
      return;
    }
    this.bNx = this.bNv;
  }
  
  public boolean execute()
  {
    this.bNx.execute();
    toggle();
    return true;
  }
  
  public int getIconResId()
  {
    return this.bNx.getIconResId();
  }
  
  public int getIconTint()
  {
    return this.bNx.getIconTint();
  }
  
  public ali xh()
  {
    return this.bNx.xh();
  }
  
  public int xi()
  {
    return this.bNx.xi();
  }
  
  public String ʲ(Context paramContext)
  {
    return this.bNx.ʲ(paramContext);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.amu
 * JD-Core Version:    0.7.0.1
 */