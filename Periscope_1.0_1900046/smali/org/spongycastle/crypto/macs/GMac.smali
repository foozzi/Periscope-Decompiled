.class public Lorg/spongycastle/crypto/macs/GMac;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/Mac;


# instance fields
.field private final aNF:Lorg/spongycastle/crypto/modes/GCMBlockCipher;

.field private final aNG:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/modes/GCMBlockCipher;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/spongycastle/crypto/macs/GMac;->aNF:Lorg/spongycastle/crypto/modes/GCMBlockCipher;

    .line 36
    const/16 v0, 0x80

    iput v0, p0, Lorg/spongycastle/crypto/macs/GMac;->aNG:I

    .line 37
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 3

    .line 102
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GMac;->aNF:Lorg/spongycastle/crypto/modes/GCMBlockCipher;

    invoke-virtual {v0, p1, p2}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->doFinal([BI)I
    :try_end_0
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 104
    :catch_0
    move-exception v2

    .line 107
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/InvalidCipherTextException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iG()Ljava/lang/String;
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/GMac;->aNF:Lorg/spongycastle/crypto/modes/GCMBlockCipher;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->iH()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->iG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-GMAC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public iO()I
    .locals 2

    .line 83
    iget v0, p0, Lorg/spongycastle/crypto/macs/GMac;->aNG:I

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public reset()V
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GMac;->aNF:Lorg/spongycastle/crypto/modes/GCMBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->reset()V

    .line 114
    return-void
.end method

.method public update(B)V
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GMac;->aNF:Lorg/spongycastle/crypto/modes/GCMBlockCipher;

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->ʿ(B)V

    .line 89
    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GMac;->aNF:Lorg/spongycastle/crypto/modes/GCMBlockCipher;

    invoke-virtual {v0, p1, p2, p3}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->ᵔ([BII)V

    .line 95
    return-void
.end method

.method public ˊ(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 6

    .line 60
    instance-of v0, p1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_0

    .line 62
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    move-object v3, v0

    .line 64
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v4

    .line 65
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/ParametersWithIV;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    move-object v5, v0

    .line 68
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GMac;->aNF:Lorg/spongycastle/crypto/modes/GCMBlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/params/AEADParameters;

    iget v2, p0, Lorg/spongycastle/crypto/macs/GMac;->aNG:I

    invoke-direct {v1, v5, v2, v4}, Lorg/spongycastle/crypto/params/AEADParameters;-><init>(Lorg/spongycastle/crypto/params/KeyParameter;I[B)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 69
    goto :goto_0

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GMAC requires ParametersWithIV"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :goto_0
    return-void
.end method
