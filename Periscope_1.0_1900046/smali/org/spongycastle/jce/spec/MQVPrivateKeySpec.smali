.class public Lorg/spongycastle/jce/spec/MQVPrivateKeySpec;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/spec/KeySpec;
.implements Lorg/spongycastle/jce/interfaces/MQVPrivateKey;


# instance fields
.field private bcc:Ljava/security/PrivateKey;

.field private bcd:Ljava/security/PrivateKey;

.field private bce:Ljava/security/PublicKey;


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 75
    const-string v0, "ECMQV"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public oP()Ljava/security/PrivateKey;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/spongycastle/jce/spec/MQVPrivateKeySpec;->bcc:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public oQ()Ljava/security/PrivateKey;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/spongycastle/jce/spec/MQVPrivateKeySpec;->bcd:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public oR()Ljava/security/PublicKey;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/spongycastle/jce/spec/MQVPrivateKeySpec;->bce:Ljava/security/PublicKey;

    return-object v0
.end method
