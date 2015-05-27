package o;

import android.util.Log;
import android.view.LayoutInflater;
import android.view.LayoutInflater.Factory;
import android.view.LayoutInflater.Factory2;
import java.lang.reflect.Field;

class ᔋ
{
  private static Field ᵖ;
  private static boolean ᵟ;
  
  static void ˊ(LayoutInflater paramLayoutInflater, LayoutInflater.Factory2 paramFactory2)
  {
    if (!ᵟ)
    {
      try
      {
        ᵖ = LayoutInflater.class.getDeclaredField("mFactory2");
        ᵖ.setAccessible(true);
      }
      catch (NoSuchFieldException localNoSuchFieldException)
      {
        Log.e("LayoutInflaterCompatHC", "forceSetFactory2 Could not find field 'mFactory2' on class " + LayoutInflater.class.getName() + "; inflation may have unexpected results.", localNoSuchFieldException);
      }
      ᵟ = true;
    }
    if (ᵖ != null) {
      try
      {
        ᵖ.set(paramLayoutInflater, paramFactory2);
        return;
      }
      catch (IllegalAccessException paramFactory2)
      {
        Log.e("LayoutInflaterCompatHC", "forceSetFactory2 could not set the Factory2 on LayoutInflater " + paramLayoutInflater + "; inflation may have unexpected results.", paramFactory2);
      }
    }
  }
  
  static void ˊ(LayoutInflater paramLayoutInflater, ᕑ paramᕑ)
  {
    if (paramᕑ != null) {
      paramᕑ = new ᔋ.if(paramᕑ);
    } else {
      paramᕑ = null;
    }
    paramLayoutInflater.setFactory2(paramᕑ);
    LayoutInflater.Factory localFactory = paramLayoutInflater.getFactory();
    if ((localFactory instanceof LayoutInflater.Factory2))
    {
      ˊ(paramLayoutInflater, (LayoutInflater.Factory2)localFactory);
      return;
    }
    ˊ(paramLayoutInflater, paramᕑ);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á
 * JD-Core Version:    0.7.0.1
 */