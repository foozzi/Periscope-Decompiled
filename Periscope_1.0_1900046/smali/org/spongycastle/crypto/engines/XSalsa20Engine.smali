.class public Lorg/spongycastle/crypto/engines/XSalsa20Engine;
.super Lorg/spongycastle/crypto/engines/Salsa20Engine;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;-><init>()V

    return-void
.end method


# virtual methods
.method public iG()Ljava/lang/String;
    .locals 1

    .line 14
    const-string v0, "XSalsa20"

    return-object v0
.end method

.method protected jF()I
    .locals 1

    .line 19
    const/16 v0, 0x18

    return v0
.end method

.method protected ˏ([B[B)V
    .locals 5

    .line 29
    if-nez p1, :cond_0

    .line 31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->iG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t support re-init with null key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    array-length v0, p1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->iG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires a 256 bit key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->ˏ([B[B)V

    .line 43
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->aKI:[I

    const/16 v1, 0x8

    invoke-static {p2, v1}, Lorg/spongycastle/util/Pack;->ᐟ([BI)I

    move-result v1

    const/16 v2, 0x8

    aput v1, v0, v2

    .line 44
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->aKI:[I

    const/16 v1, 0xc

    invoke-static {p2, v1}, Lorg/spongycastle/util/Pack;->ᐟ([BI)I

    move-result v1

    const/16 v2, 0x9

    aput v1, v0, v2

    .line 47
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->aKI:[I

    array-length v0, v0

    new-array v4, v0, [I

    .line 48
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->aKI:[I

    const/16 v1, 0x14

    invoke-static {v1, v0, v4}, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->ˋ(I[I[I)V

    .line 51
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->aKI:[I

    const/4 v1, 0x0

    aget v1, v4, v1

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->aKI:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 52
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->aKI:[I

    const/4 v1, 0x5

    aget v1, v4, v1

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->aKI:[I

    const/4 v3, 0x5

    aget v2, v2, v3

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 53
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->aKI:[I

    const/16 v1, 0xa

    aget v1, v4, v1

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->aKI:[I

    const/16 v3, 0xa

    aget v2, v2, v3

    sub-int/2addr v1, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 54
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->aKI:[I

    const/16 v1, 0xf

    aget v1, v4, v1

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->aKI:[I

    const/16 v3, 0xf

    aget v2, v2, v3

    sub-int/2addr v1, v2

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 56
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->aKI:[I

    const/4 v1, 0x6

    aget v1, v4, v1

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->aKI:[I

    const/4 v3, 0x6

    aget v2, v2, v3

    sub-int/2addr v1, v2

    const/16 v2, 0xb

    aput v1, v0, v2

    .line 57
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->aKI:[I

    const/4 v1, 0x7

    aget v1, v4, v1

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->aKI:[I

    const/4 v3, 0x7

    aget v2, v2, v3

    sub-int/2addr v1, v2

    const/16 v2, 0xc

    aput v1, v0, v2

    .line 58
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->aKI:[I

    const/16 v1, 0x8

    aget v1, v4, v1

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->aKI:[I

    const/16 v3, 0x8

    aget v2, v2, v3

    sub-int/2addr v1, v2

    const/16 v2, 0xd

    aput v1, v0, v2

    .line 59
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->aKI:[I

    const/16 v1, 0x9

    aget v1, v4, v1

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->aKI:[I

    const/16 v3, 0x9

    aget v2, v2, v3

    sub-int/2addr v1, v2

    const/16 v2, 0xe

    aput v1, v0, v2

    .line 62
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->aKI:[I

    const/16 v1, 0x10

    invoke-static {p2, v1}, Lorg/spongycastle/util/Pack;->ᐟ([BI)I

    move-result v1

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 63
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->aKI:[I

    const/16 v1, 0x14

    invoke-static {p2, v1}, Lorg/spongycastle/util/Pack;->ᐟ([BI)I

    move-result v1

    const/4 v2, 0x7

    aput v1, v0, v2

    .line 64
    return-void
.end method
