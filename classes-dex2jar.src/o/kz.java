package o;

import java.io.IOException;

class kz
  extends ll
{
  public void ˊ(kn paramkn, String paramString)
  {
    try
    {
      paramkn = new gb().ᐤ(paramString);
      if (!paramkn.n())
      {
        this.OB.ˊ(this.OC, lg.ˊ(lg.OO, 3));
        return;
      }
      paramkn = paramkn.s();
      ku.ˊ(this.OA, paramkn.ᴿ(0).s());
      this.OB.ˋ(this.OC, paramkn);
      return;
    }
    catch (ga paramkn)
    {
      this.OB.ˊ(this.OC, lg.ˊ(lg.OO, 3));
      return;
    }
    catch (IOException paramkn)
    {
      this.OB.ˊ(this.OC, lg.ˊ(lg.OM, 9, paramString));
      return;
    }
    catch (lh paramkn)
    {
      this.OB.ˊ(this.OC, ku.ˊ(this.OA, paramkn, lg.OM, 10, paramString + " : " + paramkn.toString()));
      return;
    }
    catch (Exception paramkn)
    {
      this.OB.ˊ(this.OC, lg.ˊ(lg.OM, 11, paramString + " : " + paramkn.toString()));
    }
  }
  
  public void ˊ(kn paramkn, lg paramlg)
  {
    this.OB.ˊ(this.OC, paramlg);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.kz
 * JD-Core Version:    0.7.0.1
 */