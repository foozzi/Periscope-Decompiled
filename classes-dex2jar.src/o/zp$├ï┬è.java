package o;

import java.util.Collection;
import java.util.List;
import java.util.Map;

class zp$ˊ
  extends zw
{
  public zp$ˊ(Map<String, xh> paramMap)
  {
    super(paramMap, 1);
  }
  
  public String id()
  {
    return "main_provider";
  }
  
  protected boolean ˎ(xh paramxh)
  {
    return true;
  }
  
  protected void ᐝ(Collection<anh> paramCollection)
  {
    List localList = vb();
    if (localList.isEmpty())
    {
      localList.add(anh.ˊ(anh.if.bNM));
      return;
    }
    if (((anh)localList.get(0)).BV() != anh.if.bNK)
    {
      localList.add(0, anh.ˊ(anh.if.bNM));
      localList.add(1, anh.ˊ(anh.if.bNN));
    }
    else
    {
      j = localList.size();
      i = 0;
      while (i < j)
      {
        if (!ｪ(i).uh())
        {
          anh localanh = anh.ˊ(anh.if.bNN);
          j = i - 1;
          paramCollection = localanh;
          if (j > 0)
          {
            paramCollection = localanh;
            if (((anh)localList.get(j)).BV() != anh.if.bNK) {
              paramCollection = anh.ˊ(anh.if.bNO);
            }
          }
          localList.add(i, paramCollection);
          break;
        }
        i += 1;
      }
    }
    this.bsl = 0;
    int j = localList.size();
    int i = 0;
    while (i < j)
    {
      if ((((anh)localList.get(i)).BV() == anh.if.bNL) && (!ｪ(i).uh())) {
        this.bsl += 1;
      }
      i += 1;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.zp.Ë
 * JD-Core Version:    0.7.0.1
 */