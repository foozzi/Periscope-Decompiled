.class public Lorg/spongycastle/crypto/prng/VMPCRandomGenerator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/prng/RandomGenerator;


# instance fields
.field private aMs:B

.field private aMt:[B

.field private aMu:B


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/spongycastle/crypto/prng/VMPCRandomGenerator;->aMs:B

    .line 25
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/spongycastle/crypto/prng/VMPCRandomGenerator;->aMt:[B

    .line 83
    const/16 v0, -0x42

    iput-byte v0, p0, Lorg/spongycastle/crypto/prng/VMPCRandomGenerator;->aMu:B

    .line 87
    return-void

    :array_0
    .array-data 1
        -0x45t
        0x2ct
        0x62t
        0x7ft
        -0x4bt
        -0x56t
        -0x2ct
        0xdt
        -0x7ft
        -0x2t
        -0x4et
        -0x7et
        -0x35t
        -0x60t
        -0x5ft
        0x8t
        0x18t
        0x71t
        0x56t
        -0x18t
        0x49t
        0x2t
        0x10t
        -0x3ct
        -0x22t
        0x35t
        -0x5bt
        -0x14t
        -0x80t
        0x12t
        -0x48t
        0x69t
        -0x26t
        0x2ft
        0x75t
        -0x34t
        -0x5et
        0x9t
        0x36t
        0x3t
        0x61t
        0x2dt
        -0x3t
        -0x20t
        -0x23t
        0x5t
        0x43t
        -0x70t
        -0x53t
        -0x38t
        -0x1ft
        -0x51t
        0x57t
        -0x65t
        0x4ct
        -0x28t
        0x51t
        -0x52t
        0x50t
        -0x7bt
        0x3ct
        0xat
        -0x1ct
        -0xdt
        -0x64t
        0x26t
        0x23t
        0x53t
        -0x37t
        -0x7dt
        -0x69t
        0x46t
        -0x4ft
        -0x67t
        0x64t
        0x31t
        0x77t
        -0x2bt
        0x1dt
        -0x2at
        0x78t
        -0x43t
        0x5et
        -0x50t
        -0x76t
        0x22t
        0x38t
        -0x8t
        0x68t
        0x2bt
        0x2at
        -0x3bt
        -0x2dt
        -0x9t
        -0x44t
        0x6ft
        -0x21t
        0x4t
        -0x1bt
        -0x6bt
        0x3et
        0x25t
        -0x7at
        -0x5at
        0xbt
        -0x71t
        -0xft
        0x24t
        0xet
        -0x29t
        0x40t
        -0x4dt
        -0x31t
        0x7et
        0x6t
        0x15t
        -0x66t
        0x4dt
        0x1ct
        -0x5dt
        -0x25t
        0x32t
        -0x6et
        0x58t
        0x11t
        0x27t
        -0xct
        0x59t
        -0x30t
        0x4et
        0x6at
        0x17t
        0x5bt
        -0x54t
        -0x1t
        0x7t
        -0x40t
        0x65t
        0x79t
        -0x4t
        -0x39t
        -0x33t
        0x76t
        0x42t
        0x5dt
        -0x19t
        0x3at
        0x34t
        0x7at
        0x30t
        0x28t
        0xft
        0x73t
        0x1t
        -0x7t
        -0x2ft
        -0x2et
        0x19t
        -0x17t
        -0x6ft
        -0x47t
        0x5at
        -0x13t
        0x41t
        0x6dt
        -0x4ct
        -0x3dt
        -0x62t
        -0x41t
        0x63t
        -0x6t
        0x1ft
        0x33t
        0x60t
        0x47t
        -0x77t
        -0x10t
        -0x6at
        0x1at
        0x5ft
        -0x6dt
        0x3dt
        0x37t
        0x4bt
        -0x27t
        -0x58t
        -0x3ft
        0x1bt
        -0xat
        0x39t
        -0x75t
        -0x49t
        0xct
        0x20t
        -0x32t
        -0x78t
        0x6et
        -0x4at
        0x74t
        -0x72t
        -0x73t
        0x16t
        0x29t
        -0xet
        -0x79t
        -0xbt
        -0x15t
        0x70t
        -0x1dt
        -0x5t
        0x55t
        -0x61t
        -0x3at
        0x44t
        0x4at
        0x45t
        0x7dt
        -0x1et
        0x6bt
        0x5ct
        0x6ct
        0x66t
        -0x57t
        -0x74t
        -0x12t
        -0x7ct
        0x13t
        -0x59t
        0x1et
        -0x63t
        -0x24t
        0x67t
        0x48t
        -0x46t
        0x2et
        -0x1at
        -0x5ct
        -0x55t
        0x7ct
        -0x6ct
        0x0t
        0x21t
        -0x11t
        -0x16t
        -0x42t
        -0x36t
        0x72t
        0x4ft
        0x52t
        -0x68t
        0x3ft
        -0x3et
        0x14t
        0x7bt
        0x3bt
        0x54t
    .end array-data
.end method


# virtual methods
.method public nextBytes([B)V
    .locals 2

    .line 108
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/spongycastle/crypto/prng/VMPCRandomGenerator;->ⁱ([BII)V

    .line 109
    return-void
.end method

.method public ⁱ([BII)V
    .locals 10

    .line 113
    iget-object v5, p0, Lorg/spongycastle/crypto/prng/VMPCRandomGenerator;->aMt:[B

    monitor-enter v5

    .line 115
    add-int v6, p2, p3

    .line 116
    move v7, p2

    :goto_0
    if-eq v7, v6, :cond_0

    .line 118
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/VMPCRandomGenerator;->aMt:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/prng/VMPCRandomGenerator;->aMu:B

    iget-object v2, p0, Lorg/spongycastle/crypto/prng/VMPCRandomGenerator;->aMt:[B

    iget-byte v3, p0, Lorg/spongycastle/crypto/prng/VMPCRandomGenerator;->aMs:B

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lorg/spongycastle/crypto/prng/VMPCRandomGenerator;->aMu:B

    .line 119
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/VMPCRandomGenerator;->aMt:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/VMPCRandomGenerator;->aMt:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/prng/VMPCRandomGenerator;->aMt:[B

    iget-byte v3, p0, Lorg/spongycastle/crypto/prng/VMPCRandomGenerator;->aMu:B

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v1

    aput-byte v0, p1, v7

    .line 120
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/VMPCRandomGenerator;->aMt:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/prng/VMPCRandomGenerator;->aMs:B

    and-int/lit16 v1, v1, 0xff

    aget-byte v8, v0, v1

    .line 121
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/VMPCRandomGenerator;->aMt:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/prng/VMPCRandomGenerator;->aMs:B

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lorg/spongycastle/crypto/prng/VMPCRandomGenerator;->aMt:[B

    iget-byte v3, p0, Lorg/spongycastle/crypto/prng/VMPCRandomGenerator;->aMu:B

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 122
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/VMPCRandomGenerator;->aMt:[B

    iget-byte v1, p0, Lorg/spongycastle/crypto/prng/VMPCRandomGenerator;->aMu:B

    and-int/lit16 v1, v1, 0xff

    aput-byte v8, v0, v1

    .line 123
    iget-byte v0, p0, Lorg/spongycastle/crypto/prng/VMPCRandomGenerator;->aMs:B

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/spongycastle/crypto/prng/VMPCRandomGenerator;->aMs:B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 125
    :cond_0
    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v9

    monitor-exit v5

    throw v9

    .line 126
    :goto_1
    return-void
.end method