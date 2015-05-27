package o;

import com.google.android.gms.common.api.Scope;
import java.util.List;

public final class h
{
  public static Scope[] ʾ(List<String> paramList)
  {
    ﺧ.ʼ(paramList, "scopeStrings can't be null.");
    Scope[] arrayOfScope = new Scope[paramList.size()];
    int i = 0;
    int j = paramList.size();
    while (i < j)
    {
      arrayOfScope[i] = new Scope((String)paramList.get(i));
      i += 1;
    }
    return arrayOfScope;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.h
 * JD-Core Version:    0.7.0.1
 */