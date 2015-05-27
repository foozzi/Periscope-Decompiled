.class public Lorg/spongycastle/crypto/prng/ReversedWindowGenerator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/prng/RandomGenerator;


# instance fields
.field private final aQW:Lorg/spongycastle/crypto/prng/RandomGenerator;

.field private aQX:[B

.field private aQY:I


# direct methods
.method private ﹶ([BII)V
    .locals 7

    .line 96
    move-object v4, p0

    monitor-enter v4

    .line 98
    const/4 v5, 0x0

    .line 99
    :goto_0
    if-ge v5, p3, :cond_1

    .line 101
    :try_start_0
    iget v0, p0, Lorg/spongycastle/crypto/prng/ReversedWindowGenerator;->aQY:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 103
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/ReversedWindowGenerator;->aQW:Lorg/spongycastle/crypto/prng/RandomGenerator;

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/ReversedWindowGenerator;->aQX:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/prng/ReversedWindowGenerator;->aQX:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/prng/RandomGenerator;->ⁱ([BII)V

    .line 104
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/ReversedWindowGenerator;->aQX:[B

    array-length v0, v0

    iput v0, p0, Lorg/spongycastle/crypto/prng/ReversedWindowGenerator;->aQY:I

    .line 107
    :cond_0
    move v0, v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v0, p2

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/ReversedWindowGenerator;->aQX:[B

    iget v2, p0, Lorg/spongycastle/crypto/prng/ReversedWindowGenerator;->aQY:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/spongycastle/crypto/prng/ReversedWindowGenerator;->aQY:I

    aget-byte v1, v1, v2

    aput-byte v1, p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 109
    :cond_1
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v4

    throw v6

    .line 110
    :goto_1
    return-void
.end method


# virtual methods
.method public nextBytes([B)V
    .locals 2

    .line 73
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/spongycastle/crypto/prng/ReversedWindowGenerator;->ﹶ([BII)V

    .line 74
    return-void
.end method

.method public ⁱ([BII)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/crypto/prng/ReversedWindowGenerator;->ﹶ([BII)V

    .line 89
    return-void
.end method
