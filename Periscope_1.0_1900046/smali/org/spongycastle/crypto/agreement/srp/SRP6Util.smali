.class public Lorg/spongycastle/crypto/agreement/srp/SRP6Util;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static ONE:Ljava/math/BigInteger;

.field private static ZERO:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/agreement/srp/SRP6Util;->ZERO:Ljava/math/BigInteger;

    .line 13
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/agreement/srp/SRP6Util;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ˊ(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2

    .line 53
    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 56
    sget-object v0, Lorg/spongycastle/crypto/agreement/srp/SRP6Util;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Lorg/spongycastle/crypto/CryptoException;

    const-string v1, "Invalid public value: 0"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    return-object p1
.end method

.method public static ˊ(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    .line 17
    invoke-static {p0, p1, p1, p2}, Lorg/spongycastle/crypto/agreement/srp/SRP6Util;->ˋ(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static ˊ(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    .line 22
    invoke-static {p0, p1, p2, p3}, Lorg/spongycastle/crypto/agreement/srp/SRP6Util;->ˋ(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static ˊ(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 5

    .line 43
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/16 v1, 0x100

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 44
    sget-object v0, Lorg/spongycastle/crypto/agreement/srp/SRP6Util;->ONE:Ljava/math/BigInteger;

    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 45
    sget-object v0, Lorg/spongycastle/crypto/agreement/srp/SRP6Util;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 47
    invoke-static {v3, v4, p3}, Lorg/spongycastle/util/BigIntegers;->ˏ(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static ˊ(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;[B[B[B)Ljava/math/BigInteger;
    .locals 3

    .line 27
    invoke-interface {p0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v2, v0, [B

    .line 29
    array-length v0, p3

    const/4 v1, 0x0

    invoke-interface {p0, p3, v1, v0}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 30
    const/16 v0, 0x3a

    invoke-interface {p0, v0}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 31
    array-length v0, p4

    const/4 v1, 0x0

    invoke-interface {p0, p4, v1, v0}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 32
    const/4 v0, 0x0

    invoke-interface {p0, v2, v0}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 34
    array-length v0, p2

    const/4 v1, 0x0

    invoke-interface {p0, p2, v1, v0}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 35
    array-length v0, v2

    const/4 v1, 0x0

    invoke-interface {p0, v2, v1, v0}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 36
    const/4 v0, 0x0

    invoke-interface {p0, v2, v0}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 38
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method private static ˋ(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 6

    .line 129
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v2, v0, 0x8

    .line 131
    invoke-static {p2, v2}, Lorg/spongycastle/crypto/agreement/srp/SRP6Util;->ˋ(Ljava/math/BigInteger;I)[B

    move-result-object v3

    .line 132
    invoke-static {p3, v2}, Lorg/spongycastle/crypto/agreement/srp/SRP6Util;->ˋ(Ljava/math/BigInteger;I)[B

    move-result-object v4

    .line 134
    array-length v0, v3

    const/4 v1, 0x0

    invoke-interface {p0, v3, v1, v0}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 135
    array-length v0, v4

    const/4 v1, 0x0

    invoke-interface {p0, v4, v1, v0}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 137
    invoke-interface {p0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v5, v0, [B

    .line 138
    const/4 v0, 0x0

    invoke-interface {p0, v5, v0}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 140
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method private static ˋ(Ljava/math/BigInteger;I)[B
    .locals 5

    .line 145
    invoke-static {p0}, Lorg/spongycastle/util/BigIntegers;->ᵎ(Ljava/math/BigInteger;)[B

    move-result-object v3

    .line 146
    array-length v0, v3

    if-ge v0, p1, :cond_0

    .line 148
    new-array v4, p1, [B

    .line 149
    array-length v0, v3

    sub-int v0, p1, v0

    array-length v1, v3

    const/4 v2, 0x0

    invoke-static {v3, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    move-object v3, v4

    .line 152
    :cond_0
    return-object v3
.end method
