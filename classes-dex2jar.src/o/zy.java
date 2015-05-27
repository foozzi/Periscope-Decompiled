package o;

import java.util.Comparator;
import java.util.Map;

class zy
  implements Comparator<anh>
{
  private final Map<String, xh> bsh;
  private zq bso;
  
  zy(Map<String, xh> paramMap)
  {
    this.bsh = paramMap;
    this.bso = zq.bsa;
  }
  
  public int ˊ(anh paramanh1, anh paramanh2)
  {
    paramanh1 = (xh)this.bsh.get(paramanh1.BW());
    paramanh2 = (xh)this.bsh.get(paramanh2.BW());
    if ((paramanh1 != null) && (paramanh2 != null)) {
      return this.bso.compare(paramanh1, paramanh2);
    }
    if (paramanh1 != null) {
      return -1;
    }
    return 1;
  }
  
  public zy ˊ(zq paramzq)
  {
    this.bso = paramzq;
    return this;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.zy
 * JD-Core Version:    0.7.0.1
 */