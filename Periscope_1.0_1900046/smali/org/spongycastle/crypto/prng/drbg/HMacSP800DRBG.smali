.class public Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;


# instance fields
.field private aRT:[B

.field private aRU:Lorg/spongycastle/crypto/Mac;

.field private aRm:Lorg/spongycastle/crypto/prng/EntropySource;

.field private aRr:[B

.field private aRs:J


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/Mac;ILorg/spongycastle/crypto/prng/EntropySource;[B[B)V
    .locals 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Lorg/spongycastle/crypto/prng/drbg/Utils;->ˊ(Lorg/spongycastle/crypto/Mac;)I

    move-result v0

    if-le p2, v0, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requested security strength is not supported by the derivation function"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    invoke-interface {p3}, Lorg/spongycastle/crypto/prng/EntropySource;->ls()I

    move-result v0

    if-ge v0, p2, :cond_1

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not enough entropy for security strength required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_1
    iput-object p3, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->aRm:Lorg/spongycastle/crypto/prng/EntropySource;

    .line 47
    iput-object p1, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->aRU:Lorg/spongycastle/crypto/Mac;

    .line 49
    invoke-interface {p3}, Lorg/spongycastle/crypto/prng/EntropySource;->lr()[B

    move-result-object v2

    .line 50
    invoke-static {v2, p5, p4}, Lorg/spongycastle/util/Arrays;->ˏ([B[B[B)[B

    move-result-object v3

    .line 52
    invoke-interface {p1}, Lorg/spongycastle/crypto/Mac;->iO()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->aRT:[B

    .line 53
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->aRT:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->aRr:[B

    .line 54
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->aRr:[B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 56
    invoke-direct {p0, v3}, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->Ꭵ([B)V

    .line 58
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->aRs:J

    .line 59
    return-void
.end method

.method private ˊ([BB)V
    .locals 4

    .line 72
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->aRU:Lorg/spongycastle/crypto/Mac;

    new-instance v1, Lorg/spongycastle/crypto/params/KeyParameter;

    iget-object v2, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->aRT:[B

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/Mac;->ˊ(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 74
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->aRU:Lorg/spongycastle/crypto/Mac;

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->aRr:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->aRr:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 75
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->aRU:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0, p2}, Lorg/spongycastle/crypto/Mac;->update(B)V

    .line 77
    if-eqz p1, :cond_0

    .line 79
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->aRU:Lorg/spongycastle/crypto/Mac;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->aRU:Lorg/spongycastle/crypto/Mac;

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->aRT:[B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 84
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->aRU:Lorg/spongycastle/crypto/Mac;

    new-instance v1, Lorg/spongycastle/crypto/params/KeyParameter;

    iget-object v2, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->aRT:[B

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/Mac;->ˊ(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 85
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->aRU:Lorg/spongycastle/crypto/Mac;

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->aRr:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->aRr:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 87
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->aRU:Lorg/spongycastle/crypto/Mac;

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->aRr:[B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 88
    return-void
.end method

.method private Ꭵ([B)V
    .locals 1

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->ˊ([BB)V

    .line 64
    if-eqz p1, :cond_0

    .line 66
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->ˊ([BB)V

    .line 68
    :cond_0
    return-void
.end method


# virtual methods
.method public ˊ([B[BZ)I
    .locals 8

    .line 111
    array-length v0, p1

    mul-int/lit8 v4, v0, 0x8

    .line 113
    const/high16 v0, 0x40000

    if-le v4, v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of bits per request limited to 262144"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    iget-wide v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->aRs:J

    const-wide v2, 0x800000000000L

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 120
    const/4 v0, -0x1

    return v0

    .line 123
    :cond_1
    if-eqz p3, :cond_2

    .line 125
    invoke-virtual {p0, p2}, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->ۦ([B)V

    .line 126
    const/4 p2, 0x0

    .line 130
    :cond_2
    if-eqz p2, :cond_3

    .line 132
    invoke-direct {p0, p2}, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->Ꭵ([B)V

    .line 136
    :cond_3
    array-length v0, p1

    new-array v5, v0, [B

    .line 138
    array-length v0, p1

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->aRr:[B

    array-length v1, v1

    div-int v6, v0, v1

    .line 140
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->aRU:Lorg/spongycastle/crypto/Mac;

    new-instance v1, Lorg/spongycastle/crypto/params/KeyParameter;

    iget-object v2, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->aRT:[B

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/Mac;->ˊ(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 142
    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_4

    .line 144
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->aRU:Lorg/spongycastle/crypto/Mac;

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->aRr:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->aRr:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 145
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->aRU:Lorg/spongycastle/crypto/Mac;

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->aRr:[B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 147
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->aRr:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->aRr:[B

    array-length v1, v1

    mul-int/2addr v1, v7

    iget-object v2, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->aRr:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 150
    :cond_4
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->aRr:[B

    array-length v0, v0

    mul-int/2addr v0, v6

    array-length v1, v5

    if-ge v0, v1, :cond_5

    .line 152
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->aRU:Lorg/spongycastle/crypto/Mac;

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->aRr:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->aRr:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 153
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->aRU:Lorg/spongycastle/crypto/Mac;

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->aRr:[B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 155
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->aRr:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->aRr:[B

    array-length v1, v1

    mul-int/2addr v1, v6

    array-length v2, v5

    iget-object v3, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->aRr:[B

    array-length v3, v3

    mul-int/2addr v3, v6

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v0, v3, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    :cond_5
    invoke-direct {p0, p2}, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->Ꭵ([B)V

    .line 160
    iget-wide v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->aRs:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->aRs:J

    .line 162
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v5, v1, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    return v4
.end method

.method public ۦ([B)V
    .locals 4

    .line 174
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->aRm:Lorg/spongycastle/crypto/prng/EntropySource;

    invoke-interface {v0}, Lorg/spongycastle/crypto/prng/EntropySource;->lr()[B

    move-result-object v2

    .line 175
    invoke-static {v2, p1}, Lorg/spongycastle/util/Arrays;->ﹶ([B[B)[B

    move-result-object v3

    .line 177
    invoke-direct {p0, v3}, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->Ꭵ([B)V

    .line 179
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->aRs:J

    .line 180
    return-void
.end method
