package o;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;

class İ
  implements ϊ.if
{
  İ(＿.ˋ paramˋ, ＿ param＿) {}
  
  public List<Object> findAccessibilityNodeInfosByText(String paramString, int paramInt)
  {
    paramString = this.ʷ.findAccessibilityNodeInfosByText(paramString, paramInt);
    ArrayList localArrayList = new ArrayList();
    int i = paramString.size();
    paramInt = 0;
    while (paramInt < i)
    {
      localArrayList.add(((ﯩ)paramString.get(paramInt)).ː());
      paramInt += 1;
    }
    return localArrayList;
  }
  
  public boolean performAction(int paramInt1, int paramInt2, Bundle paramBundle)
  {
    return this.ʷ.performAction(paramInt1, paramInt2, paramBundle);
  }
  
  public Object ᵎ(int paramInt)
  {
    ﯩ localﯩ = this.ʷ.ٴ(paramInt);
    if (localﯩ == null) {
      return null;
    }
    return localﯩ.ː();
  }
  
  public Object ᵔ(int paramInt)
  {
    ﯩ localﯩ = this.ʷ.ᴵ(paramInt);
    if (localﯩ == null) {
      return null;
    }
    return localﯩ.ː();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ä°
 * JD-Core Version:    0.7.0.1
 */