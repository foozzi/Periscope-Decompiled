.class public Lorg/spongycastle/crypto/engines/VMPCEngine;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/StreamCipher;


# instance fields
.field protected aIZ:[B

.field protected aKm:[B

.field protected aMs:B

.field protected aMt:[B

.field protected aMu:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMs:B

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMt:[B

    .line 18
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMu:B

    return-void
.end method


# virtual methods
.method public iG()Ljava/lang/String;
    .locals 1

    .line 25
    const-string v0, "VMPC"

    return-object v0
.end method

.method public reset()V
    .locals 2

    .line 126
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aIZ:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aKm:[B

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/crypto/engines/VMPCEngine;->ʻ([B[B)V

    .line 127
    return-void
.end method

.method protected ʻ([B[B)V
    .locals 7

    .line 70
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMu:B

    .line 71
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMt:[B

    .line 72
    const/4 v5, 0x0

    :goto_0
    const/16 v0, 0x100

    if-ge v5, v0, :cond_0

    .line 74
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMt:[B

    int-to-byte v1, v5

    aput-byte v1, v0, v5

    .line 72
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 77
    :cond_0
    const/4 v5, 0x0

    :goto_1
    const/16 v0, 0x300

    if-ge v5, v0, :cond_1

    .line 79
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMt:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMu:B

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMt:[B

    and-int/lit16 v3, v5, 0xff

    aget-byte v2, v2, v3

    add-int/2addr v1, v2

    array-length v2, p1

    rem-int v2, v5, v2

    aget-byte v2, p1, v2

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMu:B

    .line 80
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMt:[B

    and-int/lit16 v1, v5, 0xff

    aget-byte v6, v0, v1

    .line 81
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMt:[B

    and-int/lit16 v1, v5, 0xff

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMt:[B

    iget-byte v3, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMu:B

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 82
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMt:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMu:B

    and-int/lit16 v1, v1, 0xff

    aput-byte v6, v0, v1

    .line 77
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 84
    :cond_1
    const/4 v5, 0x0

    :goto_2
    const/16 v0, 0x300

    if-ge v5, v0, :cond_2

    .line 86
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMt:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMu:B

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMt:[B

    and-int/lit16 v3, v5, 0xff

    aget-byte v2, v2, v3

    add-int/2addr v1, v2

    array-length v2, p2

    rem-int v2, v5, v2

    aget-byte v2, p2, v2

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMu:B

    .line 87
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMt:[B

    and-int/lit16 v1, v5, 0xff

    aget-byte v6, v0, v1

    .line 88
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMt:[B

    and-int/lit16 v1, v5, 0xff

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMt:[B

    iget-byte v3, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMu:B

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 89
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMt:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMu:B

    and-int/lit16 v1, v1, 0xff

    aput-byte v6, v0, v1

    .line 84
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 91
    :cond_2
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMs:B

    .line 92
    return-void
.end method

.method public ʽ(B)B
    .locals 7

    .line 131
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMt:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMu:B

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMt:[B

    iget-byte v3, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMs:B

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMu:B

    .line 132
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMt:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMt:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMt:[B

    iget-byte v3, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMu:B

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    aget-byte v5, v0, v1

    .line 134
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMt:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMs:B

    and-int/lit16 v1, v1, 0xff

    aget-byte v6, v0, v1

    .line 135
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMt:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMs:B

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMt:[B

    iget-byte v3, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMu:B

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 136
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMt:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMu:B

    and-int/lit16 v1, v1, 0xff

    aput-byte v6, v0, v1

    .line 137
    iget-byte v0, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMs:B

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMs:B

    .line 140
    xor-int v0, p1, v5

    int-to-byte v0, v0

    return v0
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 4

    .line 40
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "VMPC init parameters must include an IV"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    move-object v2, v0

    .line 48
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithIV;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    instance-of v0, v0, Lorg/spongycastle/crypto/params/KeyParameter;

    if-nez v0, :cond_1

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "VMPC init parameters must include a key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithIV;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    move-object v3, v0

    .line 56
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aKm:[B

    .line 58
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aKm:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aKm:[B

    array-length v0, v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aKm:[B

    array-length v0, v0

    const/16 v1, 0x300

    if-le v0, v1, :cond_3

    .line 60
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "VMPC requires 1 to 768 bytes of IV"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_3
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aIZ:[B

    .line 65
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aIZ:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aKm:[B

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/crypto/engines/VMPCEngine;->ʻ([B[B)V

    .line 66
    return-void
.end method

.method public ˋ([BII[BI)I
    .locals 8

    .line 97
    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_0

    .line 99
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    add-int v0, p5, p3

    array-length v1, p4

    if-le v0, v1, :cond_1

    .line 104
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-ge v5, p3, :cond_2

    .line 109
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMt:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMu:B

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMt:[B

    iget-byte v3, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMs:B

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMu:B

    .line 110
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMt:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMt:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMt:[B

    iget-byte v3, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMu:B

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    aget-byte v6, v0, v1

    .line 112
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMt:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMs:B

    and-int/lit16 v1, v1, 0xff

    aget-byte v7, v0, v1

    .line 113
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMt:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMs:B

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMt:[B

    iget-byte v3, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMu:B

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 114
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMt:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMu:B

    and-int/lit16 v1, v1, 0xff

    aput-byte v7, v0, v1

    .line 115
    iget-byte v0, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMs:B

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/spongycastle/crypto/engines/VMPCEngine;->aMs:B

    .line 118
    add-int v0, v5, p5

    add-int v1, v5, p2

    aget-byte v1, p1, v1

    xor-int/2addr v1, v6

    int-to-byte v1, v1

    aput-byte v1, p4, v0

    .line 107
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 121
    :cond_2
    return p3
.end method
