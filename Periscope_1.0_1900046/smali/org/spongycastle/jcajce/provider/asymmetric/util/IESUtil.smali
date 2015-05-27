.class public Lorg/spongycastle/jcajce/provider/asymmetric/util/IESUtil;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ˊ(Lorg/spongycastle/crypto/engines/IESEngine;)Lorg/spongycastle/jce/spec/IESParameterSpec;
    .locals 5

    .line 10
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/IESEngine;->jA()Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-result-object v0

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Lorg/spongycastle/jce/spec/IESParameterSpec;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x80

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/jce/spec/IESParameterSpec;-><init>([B[BI)V

    return-object v0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/IESEngine;->jA()Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/BufferedBlockCipher;->iH()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->iG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/IESEngine;->jA()Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/BufferedBlockCipher;->iH()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->iG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RC2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/IESEngine;->jA()Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/BufferedBlockCipher;->iH()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->iG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RC5-32"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/IESEngine;->jA()Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/BufferedBlockCipher;->iH()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->iG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RC5-64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19
    :cond_1
    new-instance v0, Lorg/spongycastle/jce/spec/IESParameterSpec;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x40

    const/16 v4, 0x40

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/spongycastle/jce/spec/IESParameterSpec;-><init>([B[BII)V

    return-object v0

    .line 21
    :cond_2
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/IESEngine;->jA()Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/BufferedBlockCipher;->iH()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->iG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SKIPJACK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23
    new-instance v0, Lorg/spongycastle/jce/spec/IESParameterSpec;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x50

    const/16 v4, 0x50

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/spongycastle/jce/spec/IESParameterSpec;-><init>([B[BII)V

    return-object v0

    .line 25
    :cond_3
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/IESEngine;->jA()Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/BufferedBlockCipher;->iH()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->iG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GOST28147"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 27
    new-instance v0, Lorg/spongycastle/jce/spec/IESParameterSpec;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x100

    const/16 v4, 0x100

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/spongycastle/jce/spec/IESParameterSpec;-><init>([B[BII)V

    return-object v0

    .line 30
    :cond_4
    new-instance v0, Lorg/spongycastle/jce/spec/IESParameterSpec;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x80

    const/16 v4, 0x80

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/spongycastle/jce/spec/IESParameterSpec;-><init>([B[BII)V

    return-object v0
.end method
