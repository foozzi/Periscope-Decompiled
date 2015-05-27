.class public Lorg/spongycastle/crypto/params/ParametersWithSalt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/CipherParameters;


# instance fields
.field private aQD:Lorg/spongycastle/crypto/CipherParameters;

.field private aqg:[B


# virtual methods
.method public getSalt()[B
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ParametersWithSalt;->aqg:[B

    return-object v0
.end method

.method public lh()Lorg/spongycastle/crypto/CipherParameters;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ParametersWithSalt;->aQD:Lorg/spongycastle/crypto/CipherParameters;

    return-object v0
.end method
