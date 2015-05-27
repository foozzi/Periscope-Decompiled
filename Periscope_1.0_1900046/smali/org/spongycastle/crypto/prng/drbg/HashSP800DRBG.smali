.class public Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;


# static fields
.field private static final aRV:[B

.field private static final aRW:Ljava/util/Hashtable;


# instance fields
.field private aRK:Lorg/spongycastle/crypto/Digest;

.field private aRL:I

.field private aRX:[B

.field private aRm:Lorg/spongycastle/crypto/prng/EntropySource;

.field private aRp:I

.field private aRr:[B

.field private aRs:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    const/4 v0, 0x1

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRV:[B

    .line 21
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRW:Ljava/util/Hashtable;

    .line 25
    sget-object v0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRW:Ljava/util/Hashtable;

    const-string v1, "SHA-1"

    const/16 v2, 0x1b8

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRW:Ljava/util/Hashtable;

    const-string v1, "SHA-224"

    const/16 v2, 0x1b8

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRW:Ljava/util/Hashtable;

    const-string v1, "SHA-256"

    const/16 v2, 0x1b8

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRW:Ljava/util/Hashtable;

    const-string v1, "SHA-512/256"

    const/16 v2, 0x1b8

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRW:Ljava/util/Hashtable;

    const-string v1, "SHA-512/224"

    const/16 v2, 0x1b8

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRW:Ljava/util/Hashtable;

    const-string v1, "SHA-384"

    const/16 v2, 0x378

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRW:Ljava/util/Hashtable;

    const-string v1, "SHA-512"

    const/16 v2, 0x378

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-void

    nop

    :array_0
    .array-data 1
        0x1t
    .end array-data
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/Digest;ILorg/spongycastle/crypto/prng/EntropySource;[B[B)V
    .locals 8

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1}, Lorg/spongycastle/crypto/prng/drbg/Utils;->ˋ(Lorg/spongycastle/crypto/Digest;)I

    move-result v0

    if-le p2, v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requested security strength is not supported by the derivation function"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    invoke-interface {p3}, Lorg/spongycastle/crypto/prng/EntropySource;->ls()I

    move-result v0

    if-ge v0, p2, :cond_1

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not enough entropy for security strength required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1
    iput-object p1, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRK:Lorg/spongycastle/crypto/Digest;

    .line 66
    iput-object p3, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRm:Lorg/spongycastle/crypto/prng/EntropySource;

    .line 67
    iput p2, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRL:I

    .line 68
    sget-object v0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRW:Ljava/util/Hashtable;

    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->iG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRp:I

    .line 78
    invoke-interface {p3}, Lorg/spongycastle/crypto/prng/EntropySource;->lr()[B

    move-result-object v4

    .line 79
    invoke-static {v4, p5, p4}, Lorg/spongycastle/util/Arrays;->ˏ([B[B[B)[B

    move-result-object v5

    .line 80
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRK:Lorg/spongycastle/crypto/Digest;

    iget v1, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRp:I

    invoke-static {v0, v5, v1}, Lorg/spongycastle/crypto/prng/drbg/Utils;->ˊ(Lorg/spongycastle/crypto/Digest;[BI)[B

    move-result-object v6

    .line 82
    iput-object v6, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRr:[B

    .line 83
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRr:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v7, v0, [B

    .line 84
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRr:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRr:[B

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v7, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRK:Lorg/spongycastle/crypto/Digest;

    iget v1, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRp:I

    invoke-static {v0, v7, v1}, Lorg/spongycastle/crypto/prng/drbg/Utils;->ˊ(Lorg/spongycastle/crypto/Digest;[BI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRX:[B

    .line 87
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRs:J

    .line 88
    return-void
.end method

.method private ˈ([B[B)V
    .locals 6

    .line 188
    const/4 v3, 0x0

    .line 189
    const/4 v4, 0x1

    :goto_0
    array-length v0, p2

    if-gt v4, v0, :cond_1

    .line 191
    array-length v0, p1

    sub-int/2addr v0, v4

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    array-length v1, p2

    sub-int/2addr v1, v4

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    add-int v5, v0, v3

    .line 192
    const/16 v0, 0xff

    if-le v5, v0, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 193
    :goto_1
    array-length v0, p1

    sub-int/2addr v0, v4

    int-to-byte v1, v5

    aput-byte v1, p1, v0

    .line 189
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 196
    :cond_1
    array-length v0, p2

    add-int/lit8 v4, v0, 0x1

    :goto_2
    array-length v0, p1

    if-gt v4, v0, :cond_3

    .line 198
    array-length v0, p1

    sub-int/2addr v0, v4

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    add-int v5, v0, v3

    .line 199
    const/16 v0, 0xff

    if-le v5, v0, :cond_2

    const/4 v3, 0x1

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    .line 200
    :goto_3
    array-length v0, p1

    sub-int/2addr v0, v4

    int-to-byte v1, v5

    aput-byte v1, p1, v0

    .line 196
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 202
    :cond_3
    return-void
.end method

.method private ˉ([B[B)V
    .locals 3

    .line 246
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRK:Lorg/spongycastle/crypto/Digest;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 247
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRK:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 248
    return-void
.end method

.method private ᐤ([B)[B
    .locals 2

    .line 239
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRK:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v1, v0, [B

    .line 240
    invoke-direct {p0, p1, v1}, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->ˉ([B[B)V

    .line 241
    return-object v1
.end method

.method private ｰ([BI)[B
    .locals 10

    .line 261
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRK:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v3

    .line 262
    div-int/lit8 v0, p2, 0x8

    div-int v4, v0, v3

    .line 264
    array-length v0, p1

    new-array v5, v0, [B

    .line 265
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v5, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    div-int/lit8 v0, p2, 0x8

    new-array v6, v0, [B

    .line 269
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRK:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v7, v0, [B

    .line 270
    const/4 v8, 0x0

    :goto_0
    if-gt v8, v4, :cond_1

    .line 272
    invoke-direct {p0, v5, v7}, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->ˉ([B[B)V

    .line 274
    array-length v0, v6

    array-length v1, v7

    mul-int/2addr v1, v8

    sub-int/2addr v0, v1

    array-length v1, v7

    if-le v0, v1, :cond_0

    array-length v9, v7

    goto :goto_1

    :cond_0
    array-length v0, v6

    array-length v1, v7

    mul-int/2addr v1, v8

    sub-int v9, v0, v1

    .line 277
    :goto_1
    array-length v0, v7

    mul-int/2addr v0, v8

    const/4 v1, 0x0

    invoke-static {v7, v1, v6, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 279
    sget-object v0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRV:[B

    invoke-direct {p0, v5, v0}, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->ˈ([B[B)V

    .line 270
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 282
    :cond_1
    return-object v6
.end method


# virtual methods
.method public ˊ([B[BZ)I
    .locals 9

    .line 124
    array-length v0, p1

    mul-int/lit8 v4, v0, 0x8

    .line 126
    const/high16 v0, 0x40000

    if-le v4, v0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of bits per request limited to 262144"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    iget-wide v0, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRs:J

    const-wide v2, 0x800000000000L

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 133
    const/4 v0, -0x1

    return v0

    .line 136
    :cond_1
    if-eqz p3, :cond_2

    .line 138
    invoke-virtual {p0, p2}, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->ۦ([B)V

    .line 139
    const/4 p2, 0x0

    .line 143
    :cond_2
    if-eqz p2, :cond_3

    .line 145
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRr:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v5, v0, [B

    .line 146
    const/4 v0, 0x2

    const/4 v1, 0x0

    aput-byte v0, v5, v1

    .line 147
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRr:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRr:[B

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRr:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v5, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    invoke-direct {p0, v5}, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->ᐤ([B)[B

    move-result-object v6

    .line 152
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRr:[B

    invoke-direct {p0, v0, v6}, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->ˈ([B[B)V

    .line 156
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRr:[B

    invoke-direct {p0, v0, v4}, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->ｰ([BI)[B

    move-result-object v5

    .line 159
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRr:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v6, v0, [B

    .line 160
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRr:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRr:[B

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v6, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    const/4 v0, 0x3

    const/4 v1, 0x0

    aput-byte v0, v6, v1

    .line 163
    invoke-direct {p0, v6}, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->ᐤ([B)[B

    move-result-object v7

    .line 166
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRr:[B

    invoke-direct {p0, v0, v7}, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->ˈ([B[B)V

    .line 167
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRr:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRX:[B

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->ˈ([B[B)V

    .line 168
    const/4 v0, 0x4

    new-array v8, v0, [B

    .line 169
    iget-wide v0, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRs:J

    const/16 v2, 0x18

    shr-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, v8, v1

    .line 170
    iget-wide v0, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRs:J

    const/16 v2, 0x10

    shr-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, v8, v1

    .line 171
    iget-wide v0, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRs:J

    const/16 v2, 0x8

    shr-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    const/4 v1, 0x2

    aput-byte v0, v8, v1

    .line 172
    iget-wide v0, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRs:J

    long-to-int v0, v0

    int-to-byte v0, v0

    const/4 v1, 0x3

    aput-byte v0, v8, v1

    .line 174
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRr:[B

    invoke-direct {p0, v0, v8}, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->ˈ([B[B)V

    .line 176
    iget-wide v0, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRs:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRs:J

    .line 178
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v5, v1, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    return v4
.end method

.method public ۦ([B)V
    .locals 8

    .line 224
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRm:Lorg/spongycastle/crypto/prng/EntropySource;

    invoke-interface {v0}, Lorg/spongycastle/crypto/prng/EntropySource;->lr()[B

    move-result-object v4

    .line 225
    sget-object v0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRV:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRr:[B

    invoke-static {v0, v1, v4, p1}, Lorg/spongycastle/util/Arrays;->ˎ([B[B[B[B)[B

    move-result-object v5

    .line 226
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRK:Lorg/spongycastle/crypto/Digest;

    iget v1, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRp:I

    invoke-static {v0, v5, v1}, Lorg/spongycastle/crypto/prng/drbg/Utils;->ˊ(Lorg/spongycastle/crypto/Digest;[BI)[B

    move-result-object v6

    .line 228
    iput-object v6, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRr:[B

    .line 229
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRr:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v7, v0, [B

    .line 230
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-byte v0, v7, v1

    .line 231
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRr:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRr:[B

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v7, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRK:Lorg/spongycastle/crypto/Digest;

    iget v1, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRp:I

    invoke-static {v0, v7, v1}, Lorg/spongycastle/crypto/prng/drbg/Utils;->ˊ(Lorg/spongycastle/crypto/Digest;[BI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRX:[B

    .line 234
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->aRs:J

    .line 235
    return-void
.end method
