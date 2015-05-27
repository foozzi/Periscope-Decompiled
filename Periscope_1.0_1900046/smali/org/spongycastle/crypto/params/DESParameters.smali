.class public Lorg/spongycastle/crypto/params/DESParameters;
.super Lorg/spongycastle/crypto/params/KeyParameter;
.source ""


# static fields
.field private static aPV:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/crypto/params/DESParameters;->aPV:[B

    return-void

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1ft
        0x1ft
        0x1ft
        0x1ft
        0xet
        0xet
        0xet
        0xet
        -0x20t
        -0x20t
        -0x20t
        -0x20t
        -0xft
        -0xft
        -0xft
        -0xft
        -0x2t
        -0x2t
        -0x2t
        -0x2t
        -0x2t
        -0x2t
        -0x2t
        -0x2t
        0x1t
        -0x2t
        0x1t
        -0x2t
        0x1t
        -0x2t
        0x1t
        -0x2t
        0x1ft
        -0x20t
        0x1ft
        -0x20t
        0xet
        -0xft
        0xet
        -0xft
        0x1t
        -0x20t
        0x1t
        -0x20t
        0x1t
        -0xft
        0x1t
        -0xft
        0x1ft
        -0x2t
        0x1ft
        -0x2t
        0xet
        -0x2t
        0xet
        -0x2t
        0x1t
        0x1ft
        0x1t
        0x1ft
        0x1t
        0xet
        0x1t
        0xet
        -0x20t
        -0x2t
        -0x20t
        -0x2t
        -0xft
        -0x2t
        -0xft
        -0x2t
        -0x2t
        0x1t
        -0x2t
        0x1t
        -0x2t
        0x1t
        -0x2t
        0x1t
        -0x20t
        0x1ft
        -0x20t
        0x1ft
        -0xft
        0xet
        -0xft
        0xet
        -0x20t
        0x1t
        -0x20t
        0x1t
        -0xft
        0x1t
        -0xft
        0x1t
        -0x2t
        0x1ft
        -0x2t
        0x1ft
        -0x2t
        0xet
        -0x2t
        0xet
        0x1ft
        0x1t
        0x1ft
        0x1t
        0xet
        0x1t
        0xet
        0x1t
        -0x2t
        -0x20t
        -0x2t
        -0x20t
        -0x2t
        -0xft
        -0x2t
        -0xft
    .end array-data
.end method

.method public static ı([B)V
    .locals 5

    .line 94
    const/4 v3, 0x0

    :goto_0
    array-length v0, p0

    if-ge v3, v0, :cond_0

    .line 96
    aget-byte v4, p0, v3

    .line 97
    and-int/lit16 v0, v4, 0xfe

    shr-int/lit8 v1, v4, 0x1

    shr-int/lit8 v2, v4, 0x2

    xor-int/2addr v1, v2

    shr-int/lit8 v2, v4, 0x3

    xor-int/2addr v1, v2

    shr-int/lit8 v2, v4, 0x4

    xor-int/2addr v1, v2

    shr-int/lit8 v2, v4, 0x5

    xor-int/2addr v1, v2

    shr-int/lit8 v2, v4, 0x6

    xor-int/2addr v1, v2

    shr-int/lit8 v2, v4, 0x7

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x1

    and-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p0, v3

    .line 94
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 106
    :cond_0
    return-void
.end method

.method public static ⁱ([BI)Z
    .locals 5

    .line 65
    array-length v0, p0

    sub-int/2addr v0, p1

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key material too short."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/16 v0, 0x10

    if-ge v3, v0, :cond_3

    .line 72
    const/4 v4, 0x0

    :goto_1
    const/16 v0, 0x8

    if-ge v4, v0, :cond_2

    .line 74
    add-int v0, v4, p1

    aget-byte v0, p0, v0

    sget-object v1, Lorg/spongycastle/crypto/params/DESParameters;->aPV:[B

    mul-int/lit8 v2, v3, 0x8

    add-int/2addr v2, v4

    aget-byte v1, v1, v2

    if-eq v0, v1, :cond_1

    .line 76
    goto :goto_2

    .line 72
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 80
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 70
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 82
    :cond_3
    const/4 v0, 0x0

    return v0
.end method
