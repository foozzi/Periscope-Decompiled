.class Lorg/spongycastle/crypto/prng/drbg/Utils;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final aRY:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 11
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/prng/drbg/Utils;->aRY:Ljava/util/Hashtable;

    .line 15
    sget-object v0, Lorg/spongycastle/crypto/prng/drbg/Utils;->aRY:Ljava/util/Hashtable;

    const-string v1, "SHA-1"

    const/16 v2, 0x80

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lorg/spongycastle/crypto/prng/drbg/Utils;->aRY:Ljava/util/Hashtable;

    const-string v1, "SHA-224"

    const/16 v2, 0xc0

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lorg/spongycastle/crypto/prng/drbg/Utils;->aRY:Ljava/util/Hashtable;

    const-string v1, "SHA-256"

    const/16 v2, 0x100

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lorg/spongycastle/crypto/prng/drbg/Utils;->aRY:Ljava/util/Hashtable;

    const-string v1, "SHA-384"

    const/16 v2, 0x100

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lorg/spongycastle/crypto/prng/drbg/Utils;->aRY:Ljava/util/Hashtable;

    const-string v1, "SHA-512"

    const/16 v2, 0x100

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lorg/spongycastle/crypto/prng/drbg/Utils;->aRY:Ljava/util/Hashtable;

    const-string v1, "SHA-512/224"

    const/16 v2, 0xc0

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lorg/spongycastle/crypto/prng/drbg/Utils;->aRY:Ljava/util/Hashtable;

    const-string v1, "SHA-512/256"

    const/16 v2, 0x100

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ʳ([BI)Z
    .locals 1

    .line 101
    if-eqz p0, :cond_0

    array-length v0, p0

    if-le v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static ˊ(Lorg/spongycastle/crypto/Mac;)I
    .locals 4

    .line 33
    invoke-interface {p0}, Lorg/spongycastle/crypto/Mac;->iG()Ljava/lang/String;

    move-result-object v3

    .line 35
    sget-object v0, Lorg/spongycastle/crypto/prng/drbg/Utils;->aRY:Ljava/util/Hashtable;

    const-string v1, "/"

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static ˊ(Lorg/spongycastle/crypto/Digest;[BI)[B
    .locals 10

    .line 54
    add-int/lit8 v0, p2, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v2, v0, [B

    .line 56
    array-length v0, v2

    invoke-interface {p0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v1

    div-int v3, v0, v1

    .line 57
    const/4 v4, 0x1

    .line 59
    invoke-interface {p0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v5, v0, [B

    .line 61
    const/4 v6, 0x0

    :goto_0
    if-gt v6, v3, :cond_1

    .line 63
    int-to-byte v0, v4

    invoke-interface {p0, v0}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 65
    shr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    invoke-interface {p0, v0}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 66
    shr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    invoke-interface {p0, v0}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 67
    shr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    invoke-interface {p0, v0}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 68
    int-to-byte v0, p2

    invoke-interface {p0, v0}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 70
    array-length v0, p1

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1, v0}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 72
    const/4 v0, 0x0

    invoke-interface {p0, v5, v0}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 74
    array-length v0, v2

    array-length v1, v5

    mul-int/2addr v1, v6

    sub-int/2addr v0, v1

    array-length v1, v5

    if-le v0, v1, :cond_0

    array-length v7, v5

    goto :goto_1

    :cond_0
    array-length v0, v2

    array-length v1, v5

    mul-int/2addr v1, v6

    sub-int v7, v0, v1

    .line 77
    :goto_1
    array-length v0, v5

    mul-int/2addr v0, v6

    const/4 v1, 0x0

    invoke-static {v5, v1, v2, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    add-int/lit8 v4, v4, 0x1

    .line 61
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 83
    :cond_1
    rem-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_2

    .line 85
    rem-int/lit8 v0, p2, 0x8

    rsub-int/lit8 v6, v0, 0x8

    .line 86
    const/4 v7, 0x0

    .line 88
    const/4 v8, 0x0

    :goto_2
    array-length v0, v2

    if-eq v8, v0, :cond_2

    .line 90
    aget-byte v0, v2, v8

    and-int/lit16 v9, v0, 0xff

    .line 91
    ushr-int v0, v9, v6

    rsub-int/lit8 v1, v6, 0x8

    shl-int v1, v7, v1

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v2, v8

    .line 92
    move v7, v9

    .line 88
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 96
    :cond_2
    return-object v2
.end method

.method static ˋ(Lorg/spongycastle/crypto/Digest;)I
    .locals 2

    .line 28
    sget-object v0, Lorg/spongycastle/crypto/prng/drbg/Utils;->aRY:Ljava/util/Hashtable;

    invoke-interface {p0}, Lorg/spongycastle/crypto/Digest;->iG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
