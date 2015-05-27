.class public Lorg/spongycastle/jce/spec/MQVPublicKeySpec;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/spec/KeySpec;
.implements Lorg/spongycastle/jce/interfaces/MQVPublicKey;


# instance fields
.field private bcf:Ljava/security/PublicKey;

.field private bcg:Ljava/security/PublicKey;


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 50
    const-string v0, "ECMQV"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public oS()Ljava/security/PublicKey;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/spongycastle/jce/spec/MQVPublicKeySpec;->bcf:Ljava/security/PublicKey;

    return-object v0
.end method

.method public oT()Ljava/security/PublicKey;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/spongycastle/jce/spec/MQVPublicKeySpec;->bcg:Ljava/security/PublicKey;

    return-object v0
.end method
