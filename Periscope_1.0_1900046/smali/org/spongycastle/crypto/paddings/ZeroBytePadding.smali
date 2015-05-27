.class public Lorg/spongycastle/crypto/paddings/ZeroBytePadding;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Ljava/security/SecureRandom;)V
    .locals 0

    .line 22
    return-void
.end method

.method public ᵢ([BI)I
    .locals 2

    .line 42
    array-length v0, p1

    sub-int v1, v0, p2

    .line 44
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 46
    const/4 v0, 0x0

    aput-byte v0, p1, p2

    .line 47
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 50
    :cond_0
    return v1
.end method

.method public ﾟ([B)I
    .locals 2

    .line 59
    array-length v1, p1

    .line 61
    :goto_0
    if-lez v1, :cond_1

    .line 63
    add-int/lit8 v0, v1, -0x1

    aget-byte v0, p1, v0

    if-eqz v0, :cond_0

    .line 65
    goto :goto_1

    .line 68
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 71
    :cond_1
    :goto_1
    array-length v0, p1

    sub-int/2addr v0, v1

    return v0
.end method
