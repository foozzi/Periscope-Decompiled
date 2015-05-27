package o;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.support.v4.app.Fragment;
import java.util.HashSet;

public class ᒩ
  extends Fragment
{
  private final ԇ lL;
  private final Ꮠ lM = new ᒩ.if(this, null);
  private ᕻ lN;
  private final HashSet<ᒩ> lO = new HashSet();
  private ᒩ lY;
  
  public ᒩ()
  {
    this(new ԇ());
  }
  
  @SuppressLint({"ValidFragment"})
  public ᒩ(ԇ paramԇ)
  {
    this.lL = paramԇ;
  }
  
  private void ˊ(ᒩ paramᒩ)
  {
    this.lO.add(paramᒩ);
  }
  
  private void ˋ(ᒩ paramᒩ)
  {
    this.lO.remove(paramᒩ);
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    this.lY = Ꭸ.ร().ˊ(getActivity().getSupportFragmentManager());
    if (this.lY != this) {
      this.lY.ˊ(this);
    }
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    this.lL.onDestroy();
  }
  
  public void onDetach()
  {
    super.onDetach();
    if (this.lY != null)
    {
      this.lY.ˋ(this);
      this.lY = null;
    }
  }
  
  public void onLowMemory()
  {
    super.onLowMemory();
    if (this.lN != null) {
      this.lN.onLowMemory();
    }
  }
  
  public void onStart()
  {
    super.onStart();
    this.lL.onStart();
  }
  
  public void onStop()
  {
    super.onStop();
    this.lL.onStop();
  }
  
  public void ʼ(ᕻ paramᕻ)
  {
    this.lN = paramᕻ;
  }
  
  ԇ ں()
  {
    return this.lL;
  }
  
  public ᕻ ܥ()
  {
    return this.lN;
  }
  
  public Ꮠ ধ()
  {
    return this.lM;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á©
 * JD-Core Version:    0.7.0.1
 */