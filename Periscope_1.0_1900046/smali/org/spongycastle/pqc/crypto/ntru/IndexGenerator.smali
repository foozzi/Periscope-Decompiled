.class public Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;
    }
.end annotation


# instance fields
.field private aDx:[B

.field private aKM:I

.field private aMJ:I

.field private aNg:I

.field private aaN:I

.field private bgo:I

.field private bgp:I

.field private bgq:I

.field private bgr:Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;

.field private bgs:Lorg/spongycastle/crypto/Digest;

.field private initialized:Z


# direct methods
.method constructor <init>([BLorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->aDx:[B

    .line 32
    iget v0, p2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->aMJ:I

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->aMJ:I

    .line 33
    iget v0, p2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->aKM:I

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->aKM:I

    .line 34
    iget v0, p2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgo:I

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->bgo:I

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->bgp:I

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->bgq:I

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->aaN:I

    .line 39
    iget-object v0, p2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bgs:Lorg/spongycastle/crypto/Digest;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->bgs:Lorg/spongycastle/crypto/Digest;

    .line 41
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->bgs:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->aNg:I

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->initialized:Z

    .line 43
    return-void
.end method

.method private static copyOf([BI)[B
    .locals 4

    .line 233
    new-array v3, p1, [B

    .line 235
    array-length v0, p0

    if-ge p1, v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    array-length v0, p0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    return-object v3
.end method

.method private ˊ(Lorg/spongycastle/crypto/Digest;I)V
    .locals 1

    .line 114
    shr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 115
    shr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 116
    shr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 117
    int-to-byte v0, p2

    invoke-interface {p1, v0}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 118
    return-void
.end method

.method private ˊ(Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;[B)V
    .locals 4

    .line 103
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->bgs:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->aDx:[B

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->aDx:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 105
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->bgs:Lorg/spongycastle/crypto/Digest;

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->aaN:I

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->ˊ(Lorg/spongycastle/crypto/Digest;I)V

    .line 107
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->bgs:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 109
    invoke-virtual {p1, p2}, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->ﹻ([B)V

    .line 110
    return-void
.end method

.method static synthetic ᐣ([BI)[B
    .locals 1

    .line 9
    invoke-static {p0, p1}, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method nextIndex()I
    .locals 7

    .line 52
    iget-boolean v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->initialized:Z

    if-nez v0, :cond_1

    .line 54
    new-instance v0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;

    invoke-direct {v0}, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->bgr:Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;

    .line 55
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->bgs:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v3, v0, [B

    .line 56
    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->aaN:I

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->bgo:I

    if-ge v0, v1, :cond_0

    .line 58
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->bgr:Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;

    invoke-direct {p0, v0, v3}, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->ˊ(Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;[B)V

    .line 59
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->aaN:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->aaN:I

    goto :goto_0

    .line 61
    :cond_0
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->bgo:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->aNg:I

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->bgp:I

    .line 62
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->bgp:I

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->bgq:I

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->initialized:Z

    .line 68
    :cond_1
    :goto_1
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->bgp:I

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->aKM:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->bgp:I

    .line 69
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->bgr:Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->bgq:I

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->Ξ(I)Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;

    move-result-object v3

    .line 70
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->bgq:I

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->aKM:I

    if-ge v0, v1, :cond_4

    .line 72
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->aKM:I

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->bgq:I

    sub-int v4, v0, v1

    .line 73
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->aaN:I

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->aNg:I

    add-int/2addr v1, v4

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->aNg:I

    div-int/2addr v1, v2

    add-int v5, v0, v1

    .line 74
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->bgs:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v6, v0, [B

    .line 75
    :cond_2
    :goto_2
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->aaN:I

    if-ge v0, v5, :cond_3

    .line 77
    invoke-direct {p0, v3, v6}, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->ˊ(Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;[B)V

    .line 78
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->aaN:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->aaN:I

    .line 79
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->aNg:I

    mul-int/lit8 v0, v0, 0x8

    if-le v4, v0, :cond_2

    .line 81
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->aNg:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr v4, v0

    goto :goto_2

    .line 84
    :cond_3
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->aNg:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr v0, v4

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->bgq:I

    .line 85
    new-instance v0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;

    invoke-direct {v0}, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->bgr:Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;

    .line 86
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->bgr:Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;

    invoke-virtual {v0, v6}, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->ﹻ([B)V

    .line 87
    goto :goto_3

    .line 90
    :cond_4
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->bgq:I

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->aKM:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->bgq:I

    .line 93
    :goto_3
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->aKM:I

    invoke-virtual {v3, v0}, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->ς(I)I

    move-result v4

    .line 94
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->aKM:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->aKM:I

    const/4 v2, 0x1

    shl-int v1, v2, v1

    iget v2, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->aMJ:I

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    if-ge v4, v0, :cond_5

    .line 96
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->aMJ:I

    rem-int v0, v4, v0

    return v0

    .line 98
    :cond_5
    goto/16 :goto_1
.end method
