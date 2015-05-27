.class public Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/DerivationFunction;


# instance fields
.field private aMR:Lorg/spongycastle/crypto/macs/HMac;

.field private aMS:I

.field private aMT:[B

.field private aMU:[B

.field private aMV:I


# direct methods
.method private jV()V
    .locals 5

    .line 103
    iget v0, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->aMV:I

    iget v1, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->aMS:I

    div-int/2addr v0, v1

    add-int/lit8 v4, v0, 0x1

    .line 104
    const/16 v0, 0x100

    if-lt v4, v0, :cond_0

    .line 106
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "HKDF cannot generate more than 255 blocks of HashLen size"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->aMV:I

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->aMR:Lorg/spongycastle/crypto/macs/HMac;

    iget-object v1, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->aMU:[B

    iget v2, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->aMS:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 114
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->aMR:Lorg/spongycastle/crypto/macs/HMac;

    iget-object v1, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->aMT:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->aMT:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 115
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->aMR:Lorg/spongycastle/crypto/macs/HMac;

    int-to-byte v1, v4

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/macs/HMac;->update(B)V

    .line 116
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->aMR:Lorg/spongycastle/crypto/macs/HMac;

    iget-object v1, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->aMU:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 117
    return-void
.end method

.method private ʼ([B[B)Lorg/spongycastle/crypto/params/KeyParameter;
    .locals 4

    .line 75
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->aMR:Lorg/spongycastle/crypto/macs/HMac;

    new-instance v1, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v1, p2}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/macs/HMac;->ˊ(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 76
    if-nez p1, :cond_0

    .line 79
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->aMR:Lorg/spongycastle/crypto/macs/HMac;

    new-instance v1, Lorg/spongycastle/crypto/params/KeyParameter;

    iget v2, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->aMS:I

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/macs/HMac;->ˊ(Lorg/spongycastle/crypto/CipherParameters;)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->aMR:Lorg/spongycastle/crypto/macs/HMac;

    new-instance v1, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v1, p1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/macs/HMac;->ˊ(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 86
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->aMR:Lorg/spongycastle/crypto/macs/HMac;

    array-length v1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v1}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 88
    iget v0, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->aMS:I

    new-array v3, v0, [B

    .line 89
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->aMR:Lorg/spongycastle/crypto/macs/HMac;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 90
    new-instance v0, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v0, v3}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public ˊ(Lorg/spongycastle/crypto/DerivationParameters;)V
    .locals 4

    .line 43
    instance-of v0, p1, Lorg/spongycastle/crypto/params/HKDFParameters;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HKDF parameters required for HKDFBytesGenerator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/HKDFParameters;

    move-object v3, v0

    .line 50
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/HKDFParameters;->kL()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->aMR:Lorg/spongycastle/crypto/macs/HMac;

    new-instance v1, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/HKDFParameters;->kK()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/macs/HMac;->ˊ(Lorg/spongycastle/crypto/CipherParameters;)V

    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->aMR:Lorg/spongycastle/crypto/macs/HMac;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/HKDFParameters;->getSalt()[B

    move-result-object v1

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/HKDFParameters;->kK()[B

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->ʼ([B[B)Lorg/spongycastle/crypto/params/KeyParameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/macs/HMac;->ˊ(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 60
    :goto_0
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/HKDFParameters;->kM()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->aMT:[B

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->aMV:I

    .line 63
    iget v0, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->aMS:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->aMU:[B

    .line 64
    return-void
.end method

.method public ᐧ([BII)I
    .locals 7

    .line 128
    iget v0, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->aMV:I

    add-int/2addr v0, p3

    iget v1, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->aMS:I

    mul-int/lit16 v1, v1, 0xff

    if-le v0, v1, :cond_0

    .line 130
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "HKDF may only be used for 255 * HashLen bytes of output"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->aMV:I

    iget v1, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->aMS:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 136
    invoke-direct {p0}, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->jV()V

    .line 140
    :cond_1
    move v3, p3

    .line 141
    iget v0, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->aMV:I

    iget v1, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->aMS:I

    rem-int v4, v0, v1

    .line 142
    iget v0, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->aMS:I

    iget v1, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->aMV:I

    iget v2, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->aMS:I

    rem-int/2addr v1, v2

    sub-int v5, v0, v1

    .line 143
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 144
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->aMU:[B

    invoke-static {v0, v4, p1, p2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    iget v0, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->aMV:I

    add-int/2addr v0, v6

    iput v0, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->aMV:I

    .line 146
    sub-int/2addr v3, v6

    .line 147
    add-int/2addr p2, v6

    .line 149
    :goto_0
    if-lez v3, :cond_2

    .line 151
    invoke-direct {p0}, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->jV()V

    .line 152
    iget v0, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->aMS:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 153
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->aMU:[B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    iget v0, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->aMV:I

    add-int/2addr v0, v6

    iput v0, p0, Lorg/spongycastle/crypto/generators/HKDFBytesGenerator;->aMV:I

    .line 155
    sub-int/2addr v3, v6

    .line 156
    add-int/2addr p2, v6

    goto :goto_0

    .line 159
    :cond_2
    return p3
.end method
