package o;

class ky
  extends ll
{
  ky(ku paramku) {}
  
  public void ˊ(kn paramkn, String paramString)
  {
    label768:
    for (;;)
    {
      int i;
      try
      {
        Object localObject2 = new gb().ᐤ(paramString).s();
        Object localObject1 = this.OA;
        if ((!ku.ˏ(this.OA).equals("0")) && (this.OA.aw())) {
          paramString = ku.ˏ(this.OA);
        } else {
          paramString = ((ft)localObject2).ᴿ(1).h();
        }
        ku.ˊ((ku)localObject1, paramString);
        kq.ɩ("Resume On Reconnect is " + this.OA.aw());
        kq.ɩ("Saved Timetoken : " + ku.ˏ(this.OA));
        kq.ɩ("In Response Timetoken : " + ((ft)localObject2).ᴿ(1).h());
        kq.ɩ("Timetoken value set to " + ku.ᐝ(this.OA));
        ku.ˋ(this.OA, "0");
        kq.ɩ("Saved Timetoken reset to 0");
        if (!paramkn.an())
        {
          ku.ˎ(this.OA).ᔅ(ku.ᐝ(this.OA));
          ku.ʻ(this.OA).ᔅ(ku.ᐝ(this.OA));
        }
        else
        {
          ku.ˎ(this.OA).ᔊ(ku.ᐝ(this.OA));
          ku.ʻ(this.OA).ᔊ(ku.ᐝ(this.OA));
        }
        paramString = ((ft)localObject2).ᴿ(0).s();
        fw localfw1;
        if (((ft)localObject2).size() == 4)
        {
          localObject1 = li.ˈ(((ft)localObject2).ᴿ(2).h(), ",");
          localObject2 = li.ˈ(((ft)localObject2).ᴿ(3).h(), ",");
          i = 0;
          if (i >= localObject2.length) {
            break label758;
          }
          localfw1 = localObject1[i];
          Object localObject3 = localObject2[i];
          fw localfw2 = paramString.ᴿ(i);
          lo locallo1 = ku.ʻ(this.OA).ᒻ(localObject1[i]);
          lo locallo2 = ku.ˎ(this.OA).ᒻ(localObject1[i]);
          if ((localfw1.equals(localObject3)) && (locallo2 != null) && (!ku.ˊ(this.OA, paramkn))) {
            ku.ˊ(this.OA, localObject3, locallo2.OE, localfw2, ku.ᐝ(this.OA), paramkn);
          } else if ((!localfw1.equals(localObject3)) && (locallo1 != null) && (!ku.ˊ(this.OA, paramkn))) {
            ku.ˊ(this.OA, localObject3, locallo1.OE, localfw2, ku.ᐝ(this.OA), paramkn);
          }
        }
        else
        {
          if (((ft)localObject2).size() == 3)
          {
            localObject1 = li.ˈ(((ft)localObject2).ᴿ(2).h(), ",");
            i = 0;
            if (i >= localObject1.length) {
              break label768;
            }
            localObject2 = ku.ˎ(this.OA).ᒻ(localObject1[i]);
            localfw1 = paramString.ᴿ(i);
            if (localObject2 == null) {
              break label761;
            }
            ku.ˊ(this.OA, ((lo)localObject2).name, ((lo)localObject2).OE, localfw1, ku.ᐝ(this.OA), paramkn);
            break label761;
          }
          if (((ft)localObject2).size() < 3)
          {
            localObject1 = ku.ˎ(this.OA).aH();
            if (localObject1 != null)
            {
              i = 0;
              if (i < paramString.size())
              {
                localObject2 = paramString.ᴿ(i);
                ku.ˊ(this.OA, ((lo)localObject1).name, ((lo)localObject1).OE, (fw)localObject2, ku.ᐝ(this.OA), paramkn);
                i += 1;
                continue;
              }
            }
          }
          if (paramkn.am())
          {
            kq.ɩ("Response of subscribe 0 request. Need to do dAr process again");
            ku.ˊ(this.OA, false, paramkn.an(), paramkn.al());
          }
          else
          {
            ku.ˊ(this.OA, false);
          }
          return;
        }
      }
      catch (ga|IllegalStateException|IndexOutOfBoundsException paramString)
      {
        if (paramkn.am())
        {
          kq.ɩ("Response of subscribe 0 request. Need to do dAr process again");
          ku.ˊ(this.OA, false, paramkn.an(), paramkn.al());
          return;
        }
        ku.ˊ(this.OA, false, paramkn.al());
        return;
      }
      i += 1;
      continue;
      label758:
      continue;
      label761:
      i += 1;
    }
  }
  
  public void ˊ(kn paramkn, lg paramlg)
  {
    this.OA.ˊ(paramlg);
  }
  
  public void ˏ(kn paramkn)
  {
    ku.ˊ(this.OA, false, paramkn.al());
  }
  
  public void ᐝ(kn paramkn)
  {
    kq.ɩ("Timeout Occurred, Calling disconnect callbacks on the channels");
    if (this.OA.aw())
    {
      if (ku.ᐝ(this.OA).equals("0")) {
        paramkn = ku.ˏ(this.OA);
      } else {
        paramkn = ku.ᐝ(this.OA);
      }
    }
    else {
      paramkn = "0";
    }
    kq.ɩ("Timeout Timetoken : " + paramkn);
    ku.ˎ(this.OA).ᔉ(paramkn);
    ku.ʻ(this.OA).ᔉ(paramkn);
    ku.ˎ(this.OA).ˋ(lg.ˊ(lg.OJ, 1));
    ku.ʻ(this.OA).ˋ(lg.ˊ(lg.OJ, 1));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ky
 * JD-Core Version:    0.7.0.1
 */