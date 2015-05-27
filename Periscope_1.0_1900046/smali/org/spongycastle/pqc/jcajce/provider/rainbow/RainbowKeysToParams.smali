.class public Lorg/spongycastle/pqc/jcajce/provider/rainbow/RainbowKeysToParams;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ˊ(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .locals 8

    .line 38
    instance-of v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;

    if-eqz v0, :cond_0

    .line 40
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;

    move-object v7, v0

    .line 41
    new-instance v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    invoke-virtual {v7}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->qx()[[S

    move-result-object v1

    invoke-virtual {v7}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->qy()[S

    move-result-object v2

    invoke-virtual {v7}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->qA()[[S

    move-result-object v3

    invoke-virtual {v7}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->qz()[S

    move-result-object v4

    invoke-virtual {v7}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->qC()[I

    move-result-object v5

    invoke-virtual {v7}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->qB()[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;-><init>([[S[S[[S[S[I[Lorg/spongycastle/pqc/crypto/rainbow/Layer;)V

    return-object v0

    .line 45
    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "can\'t identify Rainbow private key."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ˊ(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .locals 6

    .line 23
    instance-of v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;

    if-eqz v0, :cond_0

    .line 25
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;

    move-object v5, v0

    .line 27
    new-instance v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;

    invoke-virtual {v5}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->qD()I

    move-result v1

    invoke-virtual {v5}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->qE()[[S

    move-result-object v2

    invoke-virtual {v5}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->qF()[[S

    move-result-object v3

    invoke-virtual {v5}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->qG()[S

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;-><init>(I[[S[[S[S)V

    return-object v0

    .line 31
    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t identify Rainbow public key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
