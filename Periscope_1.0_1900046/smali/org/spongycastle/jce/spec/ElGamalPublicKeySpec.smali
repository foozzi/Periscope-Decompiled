.class public Lorg/spongycastle/jce/spec/ElGamalPublicKeySpec;
.super Lorg/spongycastle/jce/spec/ElGamalKeySpec;
.source ""


# instance fields
.field private aPZ:Ljava/math/BigInteger;


# virtual methods
.method public getY()Ljava/math/BigInteger;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/spongycastle/jce/spec/ElGamalPublicKeySpec;->aPZ:Ljava/math/BigInteger;

    return-object v0
.end method
