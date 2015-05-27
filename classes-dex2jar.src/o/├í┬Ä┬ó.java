package o;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import java.util.HashSet;

@TargetApi(11)
public class Ꭲ
  extends Fragment
{
  private final ԇ lL;
  private final Ꮠ lM = new Ꭲ.if(this, null);
  private ᕻ lN;
  private final HashSet<Ꭲ> lO = new HashSet();
  private Ꭲ lP;
  
  public Ꭲ()
  {
    this(new ԇ());
  }
  
  @SuppressLint({"ValidFragment"})
  Ꭲ(ԇ paramԇ)
  {
    this.lL = paramԇ;
  }
  
  private void ˊ(Ꭲ paramᎢ)
  {
    this.lO.add(paramᎢ);
  }
  
  private void ˋ(Ꭲ paramᎢ)
  {
    this.lO.remove(paramᎢ);
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    this.lP = Ꭸ.ร().ˊ(getActivity().getFragmentManager());
    if (this.lP != this) {
      this.lP.ˊ(this);
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
    if (this.lP != null)
    {
      this.lP.ˋ(this);
      this.lP = null;
    }
  }
  
  public void onLowMemory()
  {
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
  
  public void onTrimMemory(int paramInt)
  {
    if (this.lN != null) {
      this.lN.onTrimMemory(paramInt);
    }
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
 * Qualified Name:     o.á¢
 * JD-Core Version:    0.7.0.1
 */