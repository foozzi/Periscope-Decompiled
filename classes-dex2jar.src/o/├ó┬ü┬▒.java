package o;

import android.os.Build.VERSION;
import java.util.ArrayList;
import java.util.Iterator;

public class ⁱ
{
  private static final ⁱ.aux ᑉ = new ⁱ.ʼ();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      ᑉ = new ⁱ.ʻ();
      return;
    }
    if (Build.VERSION.SDK_INT >= 20)
    {
      ᑉ = new ⁱ.ᐝ();
      return;
    }
    if (Build.VERSION.SDK_INT >= 19)
    {
      ᑉ = new ⁱ.ʿ();
      return;
    }
    if (Build.VERSION.SDK_INT >= 16)
    {
      ᑉ = new ⁱ.ʾ();
      return;
    }
    if (Build.VERSION.SDK_INT >= 14)
    {
      ᑉ = new ⁱ.ι();
      return;
    }
    if (Build.VERSION.SDK_INT >= 11)
    {
      ᑉ = new ⁱ.ͺ();
      return;
    }
    if (Build.VERSION.SDK_INT >= 9)
    {
      ᑉ = new ⁱ.ʽ();
      return;
    }
  }
  
  private static void ˊ(ᵔ paramᵔ, ArrayList<ⁱ.if> paramArrayList)
  {
    paramArrayList = paramArrayList.iterator();
    while (paramArrayList.hasNext()) {
      paramᵔ.ˊ((ⁱ.if)paramArrayList.next());
    }
  }
  
  private static void ˊ(ᵢ paramᵢ, ⁱ.con paramcon)
  {
    if (paramcon != null)
    {
      if ((paramcon instanceof ⁱ.ˋ))
      {
        paramcon = (ⁱ.ˋ)paramcon;
        ˡ.ˊ(paramᵢ, paramcon.ہ, paramcon.า, paramcon.ܝ, paramcon.ᕐ);
        return;
      }
      if ((paramcon instanceof ⁱ.ˏ))
      {
        paramcon = (ⁱ.ˏ)paramcon;
        ˡ.ˊ(paramᵢ, paramcon.ہ, paramcon.า, paramcon.ܝ, paramcon.ר);
        return;
      }
      if ((paramcon instanceof ⁱ.ˊ))
      {
        paramcon = (ⁱ.ˊ)paramcon;
        ˡ.ˊ(paramᵢ, paramcon.ہ, paramcon.า, paramcon.ܝ, paramcon.ᓪ, paramcon.ᓫ, paramcon.ᔾ);
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.â±
 * JD-Core Version:    0.7.0.1
 */