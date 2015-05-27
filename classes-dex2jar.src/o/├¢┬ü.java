package o;

import android.database.Cursor;
import android.widget.Filter;
import android.widget.Filter.FilterResults;

class ہ
  extends Filter
{
  ہ.if ɽ;
  
  ہ(ہ.if paramif)
  {
    this.ɽ = paramif;
  }
  
  public CharSequence convertResultToString(Object paramObject)
  {
    return this.ɽ.convertToString((Cursor)paramObject);
  }
  
  protected Filter.FilterResults performFiltering(CharSequence paramCharSequence)
  {
    paramCharSequence = this.ɽ.runQueryOnBackgroundThread(paramCharSequence);
    Filter.FilterResults localFilterResults = new Filter.FilterResults();
    if (paramCharSequence != null)
    {
      localFilterResults.count = paramCharSequence.getCount();
      localFilterResults.values = paramCharSequence;
      return localFilterResults;
    }
    localFilterResults.count = 0;
    localFilterResults.values = null;
    return localFilterResults;
  }
  
  protected void publishResults(CharSequence paramCharSequence, Filter.FilterResults paramFilterResults)
  {
    paramCharSequence = this.ɽ.getCursor();
    if ((paramFilterResults.values != null) && (paramFilterResults.values != paramCharSequence)) {
      this.ɽ.changeCursor((Cursor)paramFilterResults.values);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Û
 * JD-Core Version:    0.7.0.1
 */