.class public Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/signers/DSAKCalculator;


# static fields
.field private static final ZERO:Ljava/math/BigInteger;


# instance fields
.field private aDB:Ljava/math/BigInteger;

.field private final aFZ:[B

.field private final aGf:[B

.field private final aSf:Lorg/spongycastle/crypto/macs/HMac;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->ZERO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/Digest;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lorg/spongycastle/crypto/macs/HMac;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/macs/HMac;-><init>(Lorg/spongycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aSf:Lorg/spongycastle/crypto/macs/HMac;

    .line 34
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aSf:Lorg/spongycastle/crypto/macs/HMac;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/macs/HMac;->iO()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aGf:[B

    .line 35
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aSf:Lorg/spongycastle/crypto/macs/HMac;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/macs/HMac;->iO()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aFZ:[B

    .line 36
    return-void
.end method

.method private ᒢ([B)Ljava/math/BigInteger;
    .locals 3

    .line 143
    new-instance v2, Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-direct {v2, v0, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 145
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aDB:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 147
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aDB:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    .line 150
    :cond_0
    return-object v2
.end method


# virtual methods
.method public lA()Z
    .locals 1

    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public lB()Ljava/math/BigInteger;
    .locals 7

    .line 104
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aDB:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v4, v0, [B

    .line 108
    :goto_0
    const/4 v5, 0x0

    .line 110
    :goto_1
    array-length v0, v4

    if-ge v5, v0, :cond_0

    .line 112
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aSf:Lorg/spongycastle/crypto/macs/HMac;

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aGf:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aGf:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 114
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aSf:Lorg/spongycastle/crypto/macs/HMac;

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aGf:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 116
    array-length v0, v4

    sub-int/2addr v0, v5

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aGf:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 117
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aGf:[B

    const/4 v1, 0x0

    invoke-static {v0, v1, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    add-int/2addr v5, v6

    .line 119
    goto :goto_1

    .line 121
    :cond_0
    invoke-direct {p0, v4}, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->ᒢ([B)Ljava/math/BigInteger;

    move-result-object v6

    .line 123
    sget-object v0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aDB:Ljava/math/BigInteger;

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_1

    .line 125
    return-object v6

    .line 128
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aSf:Lorg/spongycastle/crypto/macs/HMac;

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aGf:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aGf:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 129
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aSf:Lorg/spongycastle/crypto/macs/HMac;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/macs/HMac;->update(B)V

    .line 131
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aSf:Lorg/spongycastle/crypto/macs/HMac;

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aFZ:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 133
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aSf:Lorg/spongycastle/crypto/macs/HMac;

    new-instance v1, Lorg/spongycastle/crypto/params/KeyParameter;

    iget-object v2, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aFZ:[B

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/macs/HMac;->ˊ(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 135
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aSf:Lorg/spongycastle/crypto/macs/HMac;

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aGf:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aGf:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 137
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aSf:Lorg/spongycastle/crypto/macs/HMac;

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aGf:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 138
    goto/16 :goto_0
.end method

.method public ˊ(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 9

    .line 50
    iput-object p1, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aDB:Ljava/math/BigInteger;

    .line 52
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aGf:[B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 53
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aFZ:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 55
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v4, v0, [B

    .line 56
    invoke-static {p2}, Lorg/spongycastle/util/BigIntegers;->ᵎ(Ljava/math/BigInteger;)[B

    move-result-object v5

    .line 58
    array-length v0, v4

    array-length v1, v5

    sub-int/2addr v0, v1

    array-length v1, v5

    const/4 v2, 0x0

    invoke-static {v5, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v6, v0, [B

    .line 62
    invoke-direct {p0, p3}, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->ᒢ([B)Ljava/math/BigInteger;

    move-result-object v7

    .line 64
    invoke-virtual {v7, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_0

    .line 66
    invoke-virtual {v7, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 69
    :cond_0
    invoke-static {v7}, Lorg/spongycastle/util/BigIntegers;->ᵎ(Ljava/math/BigInteger;)[B

    move-result-object v8

    .line 71
    array-length v0, v6

    array-length v1, v8

    sub-int/2addr v0, v1

    array-length v1, v8

    const/4 v2, 0x0

    invoke-static {v8, v2, v6, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aSf:Lorg/spongycastle/crypto/macs/HMac;

    new-instance v1, Lorg/spongycastle/crypto/params/KeyParameter;

    iget-object v2, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aFZ:[B

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/macs/HMac;->ˊ(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 75
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aSf:Lorg/spongycastle/crypto/macs/HMac;

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aGf:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aGf:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 76
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aSf:Lorg/spongycastle/crypto/macs/HMac;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/macs/HMac;->update(B)V

    .line 77
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aSf:Lorg/spongycastle/crypto/macs/HMac;

    array-length v1, v4

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v2, v1}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 78
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aSf:Lorg/spongycastle/crypto/macs/HMac;

    array-length v1, v6

    const/4 v2, 0x0

    invoke-virtual {v0, v6, v2, v1}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 80
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aSf:Lorg/spongycastle/crypto/macs/HMac;

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aFZ:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 82
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aSf:Lorg/spongycastle/crypto/macs/HMac;

    new-instance v1, Lorg/spongycastle/crypto/params/KeyParameter;

    iget-object v2, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aFZ:[B

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/macs/HMac;->ˊ(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 84
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aSf:Lorg/spongycastle/crypto/macs/HMac;

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aGf:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aGf:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 86
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aSf:Lorg/spongycastle/crypto/macs/HMac;

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aGf:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 88
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aSf:Lorg/spongycastle/crypto/macs/HMac;

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aGf:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aGf:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 89
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aSf:Lorg/spongycastle/crypto/macs/HMac;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/macs/HMac;->update(B)V

    .line 90
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aSf:Lorg/spongycastle/crypto/macs/HMac;

    array-length v1, v4

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v2, v1}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 91
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aSf:Lorg/spongycastle/crypto/macs/HMac;

    array-length v1, v6

    const/4 v2, 0x0

    invoke-virtual {v0, v6, v2, v1}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 93
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aSf:Lorg/spongycastle/crypto/macs/HMac;

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aFZ:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 95
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aSf:Lorg/spongycastle/crypto/macs/HMac;

    new-instance v1, Lorg/spongycastle/crypto/params/KeyParameter;

    iget-object v2, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aFZ:[B

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/macs/HMac;->ˊ(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 97
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aSf:Lorg/spongycastle/crypto/macs/HMac;

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aGf:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aGf:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 99
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aSf:Lorg/spongycastle/crypto/macs/HMac;

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->aGf:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 100
    return-void
.end method

.method public ˎ(Ljava/math/BigInteger;Ljava/security/SecureRandom;)V
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Operation not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
