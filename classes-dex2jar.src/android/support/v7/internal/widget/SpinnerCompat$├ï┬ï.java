package android.support.v7.internal.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ListAdapter;
import o.ד;
import o.ῑ;

public class SpinnerCompat$ˋ
  extends ῑ
  implements SpinnerCompat.ˎ
{
  private ListAdapter mAdapter;
  private CharSequence ᖧ;
  
  public SpinnerCompat$ˋ(SpinnerCompat paramSpinnerCompat, Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setAnchorView(paramSpinnerCompat);
    setModal(true);
    setPromptPosition(0);
    setOnItemClickListener(new ד(this, paramSpinnerCompat));
  }
  
  public void setAdapter(ListAdapter paramListAdapter)
  {
    super.setAdapter(paramListAdapter);
    this.mAdapter = paramListAdapter;
  }
  
  public void ʼ(CharSequence paramCharSequence)
  {
    this.ᖧ = paramCharSequence;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.SpinnerCompat.Ë
 * JD-Core Version:    0.7.0.1
 */