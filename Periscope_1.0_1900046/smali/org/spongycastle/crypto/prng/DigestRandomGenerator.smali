.class public Lorg/spongycastle/crypto/prng/DigestRandomGenerator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/prng/RandomGenerator;


# static fields
.field private static aQQ:J


# instance fields
.field private aDx:[B

.field private aFH:Lorg/spongycastle/crypto/Digest;

.field private aGQ:[B

.field private aQR:J

.field private aQS:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    const-wide/16 v0, 0xa

    sput-wide v0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->aQQ:J

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/Digest;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    .line 29
    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->aDx:[B

    .line 30
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->aQS:J

    .line 32
    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->aGQ:[B

    .line 33
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->aQR:J

    .line 34
    return-void
.end method

.method private lt()V
    .locals 4

    .line 85
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->aDx:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->ː([B)V

    .line 86
    iget-wide v0, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->aQS:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->aQS:J

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->ᵥ(J)V

    .line 88
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->aDx:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->ˣ([B)V

    .line 89
    return-void
.end method

.method private lu()V
    .locals 4

    .line 93
    iget-wide v0, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->aQR:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->aQR:J

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->ᵥ(J)V

    .line 94
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->aGQ:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->ː([B)V

    .line 95
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->aDx:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->ː([B)V

    .line 97
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->aGQ:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->ˣ([B)V

    .line 99
    iget-wide v0, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->aQR:J

    sget-wide v2, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->aQQ:J

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 101
    invoke-direct {p0}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->lt()V

    .line 103
    :cond_0
    return-void
.end method

.method private ː([B)V
    .locals 3

    .line 116
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 117
    return-void
.end method

.method private ˣ([B)V
    .locals 2

    .line 121
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 122
    return-void
.end method

.method private ᵥ(J)V
    .locals 3

    .line 107
    const/4 v2, 0x0

    :goto_0
    const/16 v0, 0x8

    if-eq v2, v0, :cond_0

    .line 109
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    long-to-int v1, p1

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 110
    const/16 v0, 0x8

    ushr-long/2addr p1, v0

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 112
    :cond_0
    return-void
.end method


# virtual methods
.method public nextBytes([B)V
    .locals 2

    .line 59
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->ⁱ([BII)V

    .line 60
    return-void
.end method

.method public ʲ([B)V
    .locals 3

    .line 38
    move-object v1, p0

    monitor-enter v1

    .line 40
    :try_start_0
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->ː([B)V

    .line 41
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->aDx:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->ː([B)V

    .line 42
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->aDx:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->ˣ([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 44
    :goto_0
    return-void
.end method

.method public ⁱ([BII)V
    .locals 7

    .line 64
    move-object v2, p0

    monitor-enter v2

    .line 66
    const/4 v3, 0x0

    .line 68
    :try_start_0
    invoke-direct {p0}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->lu()V

    .line 70
    add-int v4, p2, p3

    .line 71
    move v5, p2

    :goto_0
    if-eq v5, v4, :cond_1

    .line 73
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->aGQ:[B

    array-length v0, v0

    if-ne v3, v0, :cond_0

    .line 75
    invoke-direct {p0}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->lu()V

    .line 76
    const/4 v3, 0x0

    .line 78
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->aGQ:[B

    move v1, v3

    add-int/lit8 v3, v3, 0x1

    aget-byte v0, v0, v1

    aput-byte v0, p1, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 80
    :cond_1
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v2

    throw v6

    .line 81
    :goto_1
    return-void
.end method
