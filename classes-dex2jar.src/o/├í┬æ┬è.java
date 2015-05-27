package o;

import android.os.Bundle;

class ᑊ
{
  static Bundle ˊ(ᐩ.if paramif)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("resultKey", paramif.getResultKey());
    localBundle.putCharSequence("label", paramif.getLabel());
    localBundle.putCharSequenceArray("choices", paramif.getChoices());
    localBundle.putBoolean("allowFreeFormInput", paramif.getAllowFreeFormInput());
    localBundle.putBundle("extras", paramif.getExtras());
    return localBundle;
  }
  
  static Bundle[] ˋ(ᐩ.if[] paramArrayOfif)
  {
    if (paramArrayOfif == null) {
      return null;
    }
    Bundle[] arrayOfBundle = new Bundle[paramArrayOfif.length];
    int i = 0;
    while (i < paramArrayOfif.length)
    {
      arrayOfBundle[i] = ˊ(paramArrayOfif[i]);
      i += 1;
    }
    return arrayOfBundle;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á
 * JD-Core Version:    0.7.0.1
 */