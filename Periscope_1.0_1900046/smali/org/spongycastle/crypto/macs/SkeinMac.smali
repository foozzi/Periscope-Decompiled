.class public Lorg/spongycastle/crypto/macs/SkeinMac;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/Mac;


# instance fields
.field private aHq:Lorg/spongycastle/crypto/digests/SkeinEngine;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lorg/spongycastle/crypto/digests/SkeinEngine;

    invoke-direct {v0, p1, p2}, Lorg/spongycastle/crypto/digests/SkeinEngine;-><init>(II)V

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/SkeinMac;->aHq:Lorg/spongycastle/crypto/digests/SkeinEngine;

    .line 51
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/SkeinMac;->aHq:Lorg/spongycastle/crypto/digests/SkeinEngine;

    invoke-virtual {v0, p1, p2}, Lorg/spongycastle/crypto/digests/SkeinEngine;->doFinal([BI)I

    move-result v0

    return v0
.end method

.method public iG()Ljava/lang/String;
    .locals 3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skein-MAC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/SkeinMac;->aHq:Lorg/spongycastle/crypto/digests/SkeinEngine;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/digests/SkeinEngine;->getBlockSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/SkeinMac;->aHq:Lorg/spongycastle/crypto/digests/SkeinEngine;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/digests/SkeinEngine;->jb()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public iO()I
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/SkeinMac;->aHq:Lorg/spongycastle/crypto/digests/SkeinEngine;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/digests/SkeinEngine;->jb()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/SkeinMac;->aHq:Lorg/spongycastle/crypto/digests/SkeinEngine;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/digests/SkeinEngine;->reset()V

    .line 101
    return-void
.end method

.method public update(B)V
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/SkeinMac;->aHq:Lorg/spongycastle/crypto/digests/SkeinEngine;

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/digests/SkeinEngine;->update(B)V

    .line 106
    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/SkeinMac;->aHq:Lorg/spongycastle/crypto/digests/SkeinEngine;

    invoke-virtual {v0, p1, p2, p3}, Lorg/spongycastle/crypto/digests/SkeinEngine;->update([BII)V

    .line 111
    return-void
.end method

.method public ˊ(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 4

    .line 73
    instance-of v0, p1, Lorg/spongycastle/crypto/params/SkeinParameters;

    if-eqz v0, :cond_0

    .line 75
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/SkeinParameters;

    move-object v3, v0

    goto :goto_0

    .line 77
    :cond_0
    instance-of v0, p1, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_1

    .line 79
    new-instance v0, Lorg/spongycastle/crypto/params/SkeinParameters$Builder;

    invoke-direct {v0}, Lorg/spongycastle/crypto/params/SkeinParameters$Builder;-><init>()V

    move-object v1, p1

    check-cast v1, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/params/SkeinParameters$Builder;->ǃ([B)Lorg/spongycastle/crypto/params/SkeinParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/SkeinParameters$Builder;->lp()Lorg/spongycastle/crypto/params/SkeinParameters;

    move-result-object v3

    goto :goto_0

    .line 83
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid parameter passed to Skein MAC init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :goto_0
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/SkeinParameters;->getKey()[B

    move-result-object v0

    if-nez v0, :cond_2

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Skein MAC requires a key parameter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/SkeinMac;->aHq:Lorg/spongycastle/crypto/digests/SkeinEngine;

    invoke-virtual {v0, v3}, Lorg/spongycastle/crypto/digests/SkeinEngine;->ˊ(Lorg/spongycastle/crypto/params/SkeinParameters;)V

    .line 91
    return-void
.end method
