.class public Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;


# instance fields
.field private aFR:[B

.field private aPH:[[[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init([B)V
    .locals 8

    .line 13
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->aPH:[[[I

    if-nez v0, :cond_0

    .line 15
    const/16 v0, 0x20

    const/16 v1, 0x10

    const/4 v2, 0x4

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[I

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->aPH:[[[I

    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->aFR:[B

    invoke-static {v0, p1}, Lorg/spongycastle/util/Arrays;->ﹺ([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    return-void

    .line 22
    :cond_1
    :goto_0
    invoke-static {p1}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->aFR:[B

    .line 26
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->aPH:[[[I

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->ˋ([B[I)V

    .line 28
    const/4 v5, 0x4

    :goto_1
    const/4 v0, 0x1

    if-lt v5, v0, :cond_2

    .line 30
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->aPH:[[[I

    const/4 v1, 0x1

    aget-object v0, v0, v1

    add-int v1, v5, v5

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->aPH:[[[I

    const/4 v2, 0x1

    aget-object v1, v1, v2

    aget-object v1, v1, v5

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->ˎ([I[I)V

    .line 28
    shr-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 33
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->aPH:[[[I

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->aPH:[[[I

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->ˎ([I[I)V

    .line 35
    const/4 v5, 0x4

    :goto_2
    const/4 v0, 0x1

    if-lt v5, v0, :cond_3

    .line 37
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->aPH:[[[I

    const/4 v1, 0x0

    aget-object v0, v0, v1

    add-int v1, v5, v5

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->aPH:[[[I

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aget-object v1, v1, v5

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->ˎ([I[I)V

    .line 35
    shr-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 40
    :cond_3
    const/4 v5, 0x0

    .line 43
    :cond_4
    :goto_3
    const/4 v6, 0x2

    :goto_4
    const/16 v0, 0x10

    if-ge v6, v0, :cond_6

    .line 45
    const/4 v7, 0x1

    :goto_5
    if-ge v7, v6, :cond_5

    .line 47
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->aPH:[[[I

    aget-object v0, v0, v5

    aget-object v0, v0, v6

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->aPH:[[[I

    aget-object v1, v1, v5

    aget-object v1, v1, v7

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->aPH:[[[I

    aget-object v2, v2, v5

    add-int v3, v6, v7

    aget-object v2, v2, v3

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->ˊ([I[I[I)V

    .line 45
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 43
    :cond_5
    add-int/2addr v6, v6

    goto :goto_4

    .line 51
    :cond_6
    add-int/lit8 v5, v5, 0x1

    const/16 v0, 0x20

    if-ne v5, v0, :cond_7

    .line 53
    return-void

    .line 56
    :cond_7
    const/4 v0, 0x1

    if-le v5, v0, :cond_4

    .line 59
    const/16 v6, 0x8

    :goto_6
    if-lez v6, :cond_8

    .line 61
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->aPH:[[[I

    add-int/lit8 v1, v5, -0x2

    aget-object v0, v0, v1

    aget-object v0, v0, v6

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->aPH:[[[I

    aget-object v1, v1, v5

    aget-object v1, v1, v6

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->ˏ([I[I)V

    .line 59
    shr-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_8
    goto :goto_3
.end method

.method public ᵀ([B)V
    .locals 6

    .line 71
    const/4 v0, 0x4

    new-array v3, v0, [I

    .line 72
    const/16 v4, 0xf

    :goto_0
    if-ltz v4, :cond_0

    .line 75
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->aPH:[[[I

    add-int v1, v4, v4

    aget-object v0, v0, v1

    aget-byte v1, p1, v4

    and-int/lit8 v1, v1, 0xf

    aget-object v5, v0, v1

    .line 76
    const/4 v0, 0x0

    aget v0, v3, v0

    const/4 v1, 0x0

    aget v1, v5, v1

    xor-int/2addr v0, v1

    const/4 v1, 0x0

    aput v0, v3, v1

    .line 77
    const/4 v0, 0x1

    aget v0, v3, v0

    const/4 v1, 0x1

    aget v1, v5, v1

    xor-int/2addr v0, v1

    const/4 v1, 0x1

    aput v0, v3, v1

    .line 78
    const/4 v0, 0x2

    aget v0, v3, v0

    const/4 v1, 0x2

    aget v1, v5, v1

    xor-int/2addr v0, v1

    const/4 v1, 0x2

    aput v0, v3, v1

    .line 79
    const/4 v0, 0x3

    aget v0, v3, v0

    const/4 v1, 0x3

    aget v1, v5, v1

    xor-int/2addr v0, v1

    const/4 v1, 0x3

    aput v0, v3, v1

    .line 81
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->aPH:[[[I

    add-int v1, v4, v4

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    aget-byte v1, p1, v4

    and-int/lit16 v1, v1, 0xf0

    ushr-int/lit8 v1, v1, 0x4

    aget-object v5, v0, v1

    .line 82
    const/4 v0, 0x0

    aget v0, v3, v0

    const/4 v1, 0x0

    aget v1, v5, v1

    xor-int/2addr v0, v1

    const/4 v1, 0x0

    aput v0, v3, v1

    .line 83
    const/4 v0, 0x1

    aget v0, v3, v0

    const/4 v1, 0x1

    aget v1, v5, v1

    xor-int/2addr v0, v1

    const/4 v1, 0x1

    aput v0, v3, v1

    .line 84
    const/4 v0, 0x2

    aget v0, v3, v0

    const/4 v1, 0x2

    aget v1, v5, v1

    xor-int/2addr v0, v1

    const/4 v1, 0x2

    aput v0, v3, v1

    .line 85
    const/4 v0, 0x3

    aget v0, v3, v0

    const/4 v1, 0x3

    aget v1, v5, v1

    xor-int/2addr v0, v1

    const/4 v1, 0x3

    aput v0, v3, v1

    .line 72
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 88
    :cond_0
    const/4 v0, 0x0

    invoke-static {v3, p1, v0}, Lorg/spongycastle/util/Pack;->ˎ([I[BI)V

    .line 89
    return-void
.end method
