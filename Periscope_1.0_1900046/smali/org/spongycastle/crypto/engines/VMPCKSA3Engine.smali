.class public Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;
.super Lorg/spongycastle/crypto/engines/VMPCEngine;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/VMPCEngine;-><init>()V

    return-void
.end method


# virtual methods
.method public iG()Ljava/lang/String;
    .locals 1

    .line 7
    const-string v0, "VMPC-KSA3"

    return-object v0
.end method

.method protected ʻ([B[B)V
    .locals 7

    .line 12
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->aMu:B

    .line 13
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->aMt:[B

    .line 14
    const/4 v5, 0x0

    :goto_0
    const/16 v0, 0x100

    if-ge v5, v0, :cond_0

    .line 16
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->aMt:[B

    int-to-byte v1, v5

    aput-byte v1, v0, v5

    .line 14
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 19
    :cond_0
    const/4 v5, 0x0

    :goto_1
    const/16 v0, 0x300

    if-ge v5, v0, :cond_1

    .line 21
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->aMt:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->aMu:B

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->aMt:[B

    and-int/lit16 v3, v5, 0xff

    aget-byte v2, v2, v3

    add-int/2addr v1, v2

    array-length v2, p1

    rem-int v2, v5, v2

    aget-byte v2, p1, v2

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->aMu:B

    .line 22
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->aMt:[B

    and-int/lit16 v1, v5, 0xff

    aget-byte v6, v0, v1

    .line 23
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->aMt:[B

    and-int/lit16 v1, v5, 0xff

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->aMt:[B

    iget-byte v3, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->aMu:B

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 24
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->aMt:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->aMu:B

    and-int/lit16 v1, v1, 0xff

    aput-byte v6, v0, v1

    .line 19
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 27
    :cond_1
    const/4 v5, 0x0

    :goto_2
    const/16 v0, 0x300

    if-ge v5, v0, :cond_2

    .line 29
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->aMt:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->aMu:B

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->aMt:[B

    and-int/lit16 v3, v5, 0xff

    aget-byte v2, v2, v3

    add-int/2addr v1, v2

    array-length v2, p2

    rem-int v2, v5, v2

    aget-byte v2, p2, v2

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->aMu:B

    .line 30
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->aMt:[B

    and-int/lit16 v1, v5, 0xff

    aget-byte v6, v0, v1

    .line 31
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->aMt:[B

    and-int/lit16 v1, v5, 0xff

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->aMt:[B

    iget-byte v3, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->aMu:B

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 32
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->aMt:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->aMu:B

    and-int/lit16 v1, v1, 0xff

    aput-byte v6, v0, v1

    .line 27
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 35
    :cond_2
    const/4 v5, 0x0

    :goto_3
    const/16 v0, 0x300

    if-ge v5, v0, :cond_3

    .line 37
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->aMt:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->aMu:B

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->aMt:[B

    and-int/lit16 v3, v5, 0xff

    aget-byte v2, v2, v3

    add-int/2addr v1, v2

    array-length v2, p1

    rem-int v2, v5, v2

    aget-byte v2, p1, v2

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->aMu:B

    .line 38
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->aMt:[B

    and-int/lit16 v1, v5, 0xff

    aget-byte v6, v0, v1

    .line 39
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->aMt:[B

    and-int/lit16 v1, v5, 0xff

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->aMt:[B

    iget-byte v3, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->aMu:B

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 40
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->aMt:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->aMu:B

    and-int/lit16 v1, v1, 0xff

    aput-byte v6, v0, v1

    .line 35
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 43
    :cond_3
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->aMs:B

    .line 44
    return-void
.end method
