package o;

import java.util.Comparator;

class agp$ˊ
  implements Comparator<ang>
{
  public int ˊ(ang paramang1, ang paramang2)
  {
    int i = Long.valueOf(paramang1.BT()).compareTo(Long.valueOf(paramang2.BT()));
    if (i == 0) {
      return Integer.valueOf(paramang1.BU()).compareTo(Integer.valueOf(paramang2.BU()));
    }
    return i;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.agp.Ë
 * JD-Core Version:    0.7.0.1
 */