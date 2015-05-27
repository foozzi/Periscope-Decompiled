package org.spongycastle.jce.provider;

import java.security.cert.PolicyNode;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class PKIXPolicyNode
  implements PolicyNode
{
  protected boolean azn;
  protected List bbD;
  protected int bbE;
  protected Set bbF;
  protected PolicyNode bbG;
  protected Set bbH;
  protected String bbI;
  
  public PKIXPolicyNode(List paramList, int paramInt, Set paramSet1, PolicyNode paramPolicyNode, Set paramSet2, String paramString, boolean paramBoolean)
  {
    this.bbD = paramList;
    this.bbE = paramInt;
    this.bbF = paramSet1;
    this.bbG = paramPolicyNode;
    this.bbH = paramSet2;
    this.bbI = paramString;
    this.azn = paramBoolean;
  }
  
  public Object clone()
  {
    return oX();
  }
  
  public Iterator getChildren()
  {
    return this.bbD.iterator();
  }
  
  public int getDepth()
  {
    return this.bbE;
  }
  
  public Set getExpectedPolicies()
  {
    return this.bbF;
  }
  
  public PolicyNode getParent()
  {
    return this.bbG;
  }
  
  public Set getPolicyQualifiers()
  {
    return this.bbH;
  }
  
  public String getValidPolicy()
  {
    return this.bbI;
  }
  
  public boolean hasChildren()
  {
    return !this.bbD.isEmpty();
  }
  
  public boolean isCritical()
  {
    return this.azn;
  }
  
  public PKIXPolicyNode oX()
  {
    Object localObject1 = new HashSet();
    Object localObject2 = this.bbF.iterator();
    while (((Iterator)localObject2).hasNext()) {
      ((Set)localObject1).add(new String((String)((Iterator)localObject2).next()));
    }
    localObject2 = new HashSet();
    Object localObject3 = this.bbH.iterator();
    while (((Iterator)localObject3).hasNext()) {
      ((Set)localObject2).add(new String((String)((Iterator)localObject3).next()));
    }
    localObject1 = new PKIXPolicyNode(new ArrayList(), this.bbE, (Set)localObject1, null, (Set)localObject2, new String(this.bbI), this.azn);
    localObject2 = this.bbD.iterator();
    while (((Iterator)localObject2).hasNext())
    {
      localObject3 = ((PKIXPolicyNode)((Iterator)localObject2).next()).oX();
      ((PKIXPolicyNode)localObject3).ˎ((PKIXPolicyNode)localObject1);
      ((PKIXPolicyNode)localObject1).ˊ((PKIXPolicyNode)localObject3);
    }
    return localObject1;
  }
  
  public String toString()
  {
    return toString("");
  }
  
  public String toString(String paramString)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(paramString);
    localStringBuffer.append(this.bbI);
    localStringBuffer.append(" {\n");
    int i = 0;
    while (i < this.bbD.size())
    {
      localStringBuffer.append(((PKIXPolicyNode)this.bbD.get(i)).toString(paramString + "    "));
      i += 1;
    }
    localStringBuffer.append(paramString);
    localStringBuffer.append("}\n");
    return localStringBuffer.toString();
  }
  
  public void ʺ(boolean paramBoolean)
  {
    this.azn = paramBoolean;
  }
  
  public void ˊ(PKIXPolicyNode paramPKIXPolicyNode)
  {
    this.bbD.add(paramPKIXPolicyNode);
    paramPKIXPolicyNode.ˎ(this);
  }
  
  public void ˋ(PKIXPolicyNode paramPKIXPolicyNode)
  {
    this.bbD.remove(paramPKIXPolicyNode);
  }
  
  public void ˎ(PKIXPolicyNode paramPKIXPolicyNode)
  {
    this.bbG = paramPKIXPolicyNode;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.provider.PKIXPolicyNode
 * JD-Core Version:    0.7.0.1
 */