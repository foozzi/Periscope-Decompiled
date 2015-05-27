.class public Lorg/spongycastle/crypto/macs/VMPCMac;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/Mac;


# instance fields
.field private aIZ:[B

.field private aKm:[B

.field private aMs:B

.field private aMt:[B

.field private aMu:B

.field private aOA:B

.field private aOB:B

.field private aOC:B

.field private aOx:B

.field private aOy:[B

.field private aOz:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMs:B

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    .line 15
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMu:B

    return-void
.end method

.method private ʻ([B[B)V
    .locals 7

    .line 118
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMu:B

    .line 119
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    .line 120
    const/4 v5, 0x0

    :goto_0
    const/16 v0, 0x100

    if-ge v5, v0, :cond_0

    .line 122
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    int-to-byte v1, v5

    aput-byte v1, v0, v5

    .line 120
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 124
    :cond_0
    const/4 v5, 0x0

    :goto_1
    const/16 v0, 0x300

    if-ge v5, v0, :cond_1

    .line 126
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMu:B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    and-int/lit16 v3, v5, 0xff

    aget-byte v2, v2, v3

    add-int/2addr v1, v2

    array-length v2, p1

    rem-int v2, v5, v2

    aget-byte v2, p1, v2

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMu:B

    .line 127
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    and-int/lit16 v1, v5, 0xff

    aget-byte v6, v0, v1

    .line 128
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    and-int/lit16 v1, v5, 0xff

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    iget-byte v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMu:B

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 129
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMu:B

    and-int/lit16 v1, v1, 0xff

    aput-byte v6, v0, v1

    .line 124
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 131
    :cond_1
    const/4 v5, 0x0

    :goto_2
    const/16 v0, 0x300

    if-ge v5, v0, :cond_2

    .line 133
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMu:B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    and-int/lit16 v3, v5, 0xff

    aget-byte v2, v2, v3

    add-int/2addr v1, v2

    array-length v2, p2

    rem-int v2, v5, v2

    aget-byte v2, p2, v2

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMu:B

    .line 134
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    and-int/lit16 v1, v5, 0xff

    aget-byte v6, v0, v1

    .line 135
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    and-int/lit16 v1, v5, 0xff

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    iget-byte v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMu:B

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 136
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMu:B

    and-int/lit16 v1, v1, 0xff

    aput-byte v6, v0, v1

    .line 131
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 138
    :cond_2
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMs:B

    .line 139
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 8

    .line 28
    const/4 v5, 0x1

    :goto_0
    const/16 v0, 0x19

    if-ge v5, v0, :cond_0

    .line 30
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMu:B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    iget-byte v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMs:B

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMu:B

    .line 32
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOC:B

    iget-byte v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOB:B

    add-int/2addr v1, v2

    add-int/2addr v1, v5

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOC:B

    .line 33
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOB:B

    iget-byte v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOA:B

    add-int/2addr v1, v2

    add-int/2addr v1, v5

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOB:B

    .line 34
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOA:B

    iget-byte v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOz:B

    add-int/2addr v1, v2

    add-int/2addr v1, v5

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOA:B

    .line 35
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOz:B

    iget-byte v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMu:B

    add-int/2addr v1, v2

    add-int/2addr v1, v5

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOz:B

    .line 36
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOy:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOx:B

    and-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOy:[B

    iget-byte v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOx:B

    and-int/lit8 v3, v3, 0x1f

    aget-byte v2, v2, v3

    iget-byte v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOz:B

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 37
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOy:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOx:B

    add-int/lit8 v1, v1, 0x1

    and-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOy:[B

    iget-byte v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOx:B

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v3, v3, 0x1f

    aget-byte v2, v2, v3

    iget-byte v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOA:B

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 38
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOy:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOx:B

    add-int/lit8 v1, v1, 0x2

    and-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOy:[B

    iget-byte v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOx:B

    add-int/lit8 v3, v3, 0x2

    and-int/lit8 v3, v3, 0x1f

    aget-byte v2, v2, v3

    iget-byte v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOB:B

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 39
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOy:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOx:B

    add-int/lit8 v1, v1, 0x3

    and-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOy:[B

    iget-byte v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOx:B

    add-int/lit8 v3, v3, 0x3

    and-int/lit8 v3, v3, 0x1f

    aget-byte v2, v2, v3

    iget-byte v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOC:B

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 40
    iget-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOx:B

    add-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x1f

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOx:B

    .line 42
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMs:B

    and-int/lit16 v1, v1, 0xff

    aget-byte v6, v0, v1

    .line 43
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMs:B

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    iget-byte v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMu:B

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 44
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMu:B

    and-int/lit16 v1, v1, 0xff

    aput-byte v6, v0, v1

    .line 45
    iget-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMs:B

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMs:B

    .line 28
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 49
    :cond_0
    const/4 v5, 0x0

    :goto_1
    const/16 v0, 0x300

    if-ge v5, v0, :cond_1

    .line 51
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMu:B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    and-int/lit16 v3, v5, 0xff

    aget-byte v2, v2, v3

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOy:[B

    and-int/lit8 v3, v5, 0x1f

    aget-byte v2, v2, v3

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMu:B

    .line 52
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    and-int/lit16 v1, v5, 0xff

    aget-byte v6, v0, v1

    .line 53
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    and-int/lit16 v1, v5, 0xff

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    iget-byte v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMu:B

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 54
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMu:B

    and-int/lit16 v1, v1, 0xff

    aput-byte v6, v0, v1

    .line 49
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 58
    :cond_1
    const/16 v0, 0x14

    new-array v5, v0, [B

    .line 59
    const/4 v6, 0x0

    :goto_2
    const/16 v0, 0x14

    if-ge v6, v0, :cond_2

    .line 61
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMu:B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    and-int/lit16 v3, v6, 0xff

    aget-byte v2, v2, v3

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMu:B

    .line 62
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    iget-byte v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMu:B

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v1

    aput-byte v0, v5, v6

    .line 64
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    and-int/lit16 v1, v6, 0xff

    aget-byte v7, v0, v1

    .line 65
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    and-int/lit16 v1, v6, 0xff

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    iget-byte v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMu:B

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 66
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMu:B

    and-int/lit16 v1, v1, 0xff

    aput-byte v7, v0, v1

    .line 59
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 69
    :cond_2
    array-length v0, v5

    const/4 v1, 0x0

    invoke-static {v5, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/VMPCMac;->reset()V

    .line 72
    array-length v0, v5

    return v0
.end method

.method public iG()Ljava/lang/String;
    .locals 1

    .line 77
    const-string v0, "VMPC-MAC"

    return-object v0
.end method

.method public iO()I
    .locals 1

    .line 82
    const/16 v0, 0x14

    return v0
.end method

.method public reset()V
    .locals 3

    .line 143
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aIZ:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aKm:[B

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/macs/VMPCMac;->ʻ([B[B)V

    .line 144
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMs:B

    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOC:B

    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOB:B

    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOA:B

    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOz:B

    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOx:B

    .line 145
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOy:[B

    .line 146
    const/4 v2, 0x0

    :goto_0
    const/16 v0, 0x20

    if-ge v2, v0, :cond_0

    .line 148
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOy:[B

    const/4 v1, 0x0

    aput-byte v1, v0, v2

    .line 146
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    :cond_0
    return-void
.end method

.method public update(B)V
    .locals 7

    .line 154
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMu:B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    iget-byte v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMs:B

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMu:B

    .line 155
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    iget-byte v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMu:B

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v1

    xor-int/2addr v0, p1

    int-to-byte v5, v0

    .line 157
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOC:B

    iget-byte v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOB:B

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOC:B

    .line 158
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOB:B

    iget-byte v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOA:B

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOB:B

    .line 159
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOA:B

    iget-byte v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOz:B

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOA:B

    .line 160
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOz:B

    iget-byte v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMu:B

    add-int/2addr v1, v2

    add-int/2addr v1, v5

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOz:B

    .line 161
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOy:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOx:B

    and-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOy:[B

    iget-byte v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOx:B

    and-int/lit8 v3, v3, 0x1f

    aget-byte v2, v2, v3

    iget-byte v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOz:B

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 162
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOy:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOx:B

    add-int/lit8 v1, v1, 0x1

    and-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOy:[B

    iget-byte v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOx:B

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v3, v3, 0x1f

    aget-byte v2, v2, v3

    iget-byte v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOA:B

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 163
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOy:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOx:B

    add-int/lit8 v1, v1, 0x2

    and-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOy:[B

    iget-byte v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOx:B

    add-int/lit8 v3, v3, 0x2

    and-int/lit8 v3, v3, 0x1f

    aget-byte v2, v2, v3

    iget-byte v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOB:B

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 164
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOy:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOx:B

    add-int/lit8 v1, v1, 0x3

    and-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOy:[B

    iget-byte v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOx:B

    add-int/lit8 v3, v3, 0x3

    and-int/lit8 v3, v3, 0x1f

    aget-byte v2, v2, v3

    iget-byte v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOC:B

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 165
    iget-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOx:B

    add-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x1f

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aOx:B

    .line 167
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMs:B

    and-int/lit16 v1, v1, 0xff

    aget-byte v6, v0, v1

    .line 168
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMs:B

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    iget-byte v3, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMu:B

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 169
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMt:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMu:B

    and-int/lit16 v1, v1, 0xff

    aput-byte v6, v0, v1

    .line 170
    iget-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMs:B

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aMs:B

    .line 171
    return-void
.end method

.method public update([BII)V
    .locals 3

    .line 176
    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_0

    .line 178
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_1

    .line 183
    aget-byte v0, p1, v2

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/macs/VMPCMac;->update(B)V

    .line 181
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    :cond_1
    return-void
.end method

.method public ˊ(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 4

    .line 87
    instance-of v0, p1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "VMPC-MAC Init parameters must include an IV"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    move-object v2, v0

    .line 94
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithIV;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    move-object v3, v0

    .line 96
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithIV;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    instance-of v0, v0, Lorg/spongycastle/crypto/params/KeyParameter;

    if-nez v0, :cond_1

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "VMPC-MAC Init parameters must include a key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_1
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aKm:[B

    .line 104
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aKm:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aKm:[B

    array-length v0, v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aKm:[B

    array-length v0, v0

    const/16 v1, 0x300

    if-le v0, v1, :cond_3

    .line 106
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "VMPC-MAC requires 1 to 768 bytes of IV"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_3
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/VMPCMac;->aIZ:[B

    .line 112
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/VMPCMac;->reset()V

    .line 114
    return-void
.end method
