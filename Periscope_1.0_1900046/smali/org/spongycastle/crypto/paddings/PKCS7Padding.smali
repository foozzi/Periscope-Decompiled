.class public Lorg/spongycastle/crypto/paddings/PKCS7Padding;
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

    sub-int/2addr v0, p2

    int-to-byte v1, v0

    .line 44
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 46
    aput-byte v1, p1, p2

    .line 47
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 50
    :cond_0
    return v1
.end method

.method public ﾟ([B)I
    .locals 4

    .line 59
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p1, v0

    and-int/lit16 v2, v0, 0xff

    .line 61
    array-length v0, p1

    if-gt v2, v0, :cond_0

    if-nez v2, :cond_1

    .line 63
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "pad block corrupted"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    const/4 v3, 0x1

    :goto_0
    if-gt v3, v2, :cond_3

    .line 68
    array-length v0, p1

    sub-int/2addr v0, v3

    aget-byte v0, p1, v0

    if-eq v0, v2, :cond_2

    .line 70
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "pad block corrupted"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 74
    :cond_3
    return v2
.end method
