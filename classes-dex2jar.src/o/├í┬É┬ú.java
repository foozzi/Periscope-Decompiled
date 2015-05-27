package o;

import android.app.RemoteInput;
import android.app.RemoteInput.Builder;

class ᐣ
{
  static RemoteInput[] ˊ(ᐩ.if[] paramArrayOfif)
  {
    if (paramArrayOfif == null) {
      return null;
    }
    RemoteInput[] arrayOfRemoteInput = new RemoteInput[paramArrayOfif.length];
    int i = 0;
    while (i < paramArrayOfif.length)
    {
      ᐩ.if localif = paramArrayOfif[i];
      arrayOfRemoteInput[i] = new RemoteInput.Builder(localif.getResultKey()).setLabel(localif.getLabel()).setChoices(localif.getChoices()).setAllowFreeFormInput(localif.getAllowFreeFormInput()).addExtras(localif.getExtras()).build();
      i += 1;
    }
    return arrayOfRemoteInput;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á£
 * JD-Core Version:    0.7.0.1
 */