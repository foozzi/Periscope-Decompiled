.class public Lorg/spongycastle/crypto/modes/gcm/Tables64kGCMMultiplier;
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
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->aPH:[[[I

    if-nez v0, :cond_0

    .line 15
    const/16 v0, 0x10

    const/16 v1, 0x100

    const/4 v2, 0x4

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[I

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->aPH:[[[I

    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->aFR:[B

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

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->aFR:[B

    .line 25
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->aPH:[[[I

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/16 v1, 0x80

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->ˋ([B[I)V

    .line 27
    const/16 v5, 0x40

    :goto_1
    const/4 v0, 0x1

    if-lt v5, v0, :cond_2

    .line 29
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->aPH:[[[I

    const/4 v1, 0x0

    aget-object v0, v0, v1

    add-int v1, v5, v5

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->aPH:[[[I

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aget-object v1, v1, v5

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->ˎ([I[I)V

    .line 27
    shr-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 32
    :cond_2
    const/4 v5, 0x0

    .line 35
    :goto_2
    const/4 v6, 0x2

    :goto_3
    const/16 v0, 0x100

    if-ge v6, v0, :cond_4

    .line 37
    const/4 v7, 0x1

    :goto_4
    if-ge v7, v6, :cond_3

    .line 39
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->aPH:[[[I

    aget-object v0, v0, v5

    aget-object v0, v0, v6

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->aPH:[[[I

    aget-object v1, v1, v5

    aget-object v1, v1, v7

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->aPH:[[[I

    aget-object v2, v2, v5

    add-int v3, v6, v7

    aget-object v2, v2, v3

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->ˊ([I[I[I)V

    .line 37
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 35
    :cond_3
    add-int/2addr v6, v6

    goto :goto_3

    .line 43
    :cond_4
    add-int/lit8 v5, v5, 0x1

    const/16 v0, 0x10

    if-ne v5, v0, :cond_5

    .line 45
    return-void

    .line 49
    :cond_5
    const/16 v6, 0x80

    :goto_5
    if-lez v6, :cond_6

    .line 51
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->aPH:[[[I

    add-int/lit8 v1, v5, -0x1

    aget-object v0, v0, v1

    aget-object v0, v0, v6

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->aPH:[[[I

    aget-object v1, v1, v5

    aget-object v1, v1, v6

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->ˏ([I[I)V

    .line 49
    shr-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_6
    goto :goto_2
.end method

.method public ᵀ([B)V
    .locals 6

    .line 60
    const/4 v0, 0x4

    new-array v3, v0, [I

    .line 61
    const/16 v4, 0xf

    :goto_0
    if-ltz v4, :cond_0

    .line 64
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->aPH:[[[I

    aget-object v0, v0, v4

    aget-byte v1, p1, v4

    and-int/lit16 v1, v1, 0xff

    aget-object v5, v0, v1

    .line 65
    const/4 v0, 0x0

    aget v0, v3, v0

    const/4 v1, 0x0

    aget v1, v5, v1

    xor-int/2addr v0, v1

    const/4 v1, 0x0

    aput v0, v3, v1

    .line 66
    const/4 v0, 0x1

    aget v0, v3, v0

    const/4 v1, 0x1

    aget v1, v5, v1

    xor-int/2addr v0, v1

    const/4 v1, 0x1

    aput v0, v3, v1

    .line 67
    const/4 v0, 0x2

    aget v0, v3, v0

    const/4 v1, 0x2

    aget v1, v5, v1

    xor-int/2addr v0, v1

    const/4 v1, 0x2

    aput v0, v3, v1

    .line 68
    const/4 v0, 0x3

    aget v0, v3, v0

    const/4 v1, 0x3

    aget v1, v5, v1

    xor-int/2addr v0, v1

    const/4 v1, 0x3

    aput v0, v3, v1

    .line 61
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 71
    :cond_0
    const/4 v0, 0x0

    invoke-static {v3, p1, v0}, Lorg/spongycastle/util/Pack;->ˎ([I[BI)V

    .line 72
    return-void
.end method
