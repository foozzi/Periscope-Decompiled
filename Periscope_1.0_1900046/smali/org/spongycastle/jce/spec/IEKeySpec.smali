.class public Lorg/spongycastle/jce/spec/IEKeySpec;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/spec/KeySpec;
.implements Lorg/spongycastle/jce/interfaces/IESKey;


# instance fields
.field private bca:Ljava/security/PublicKey;

.field private bcb:Ljava/security/PrivateKey;


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 52
    const-string v0, "IES"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrivate()Ljava/security/PrivateKey;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/spongycastle/jce/spec/IEKeySpec;->bcb:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public getPublic()Ljava/security/PublicKey;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/spongycastle/jce/spec/IEKeySpec;->bca:Ljava/security/PublicKey;

    return-object v0
.end method
