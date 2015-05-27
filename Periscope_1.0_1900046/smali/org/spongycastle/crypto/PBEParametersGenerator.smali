.class public abstract Lorg/spongycastle/crypto/PBEParametersGenerator;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public aFe:[B

.field public aFf:I

.field public aqg:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static ˋ([C)[B
    .locals 3

    .line 106
    if-eqz p0, :cond_1

    .line 108
    array-length v0, p0

    new-array v1, v0, [B

    .line 110
    const/4 v2, 0x0

    :goto_0
    array-length v0, v1

    if-eq v2, v0, :cond_0

    .line 112
    aget-char v0, p0, v2

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 110
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    :cond_0
    return-object v1

    .line 119
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public static ˎ([C)[B
    .locals 1

    .line 133
    if-eqz p0, :cond_0

    .line 135
    invoke-static {p0}, Lorg/spongycastle/util/Strings;->ʻ([C)[B

    move-result-object v0

    return-object v0

    .line 139
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public static ˏ([C)[B
    .locals 5

    .line 153
    if-eqz p0, :cond_1

    array-length v0, p0

    if-lez v0, :cond_1

    .line 156
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    new-array v3, v0, [B

    .line 158
    const/4 v4, 0x0

    :goto_0
    array-length v0, p0

    if-eq v4, v0, :cond_0

    .line 160
    mul-int/lit8 v0, v4, 0x2

    aget-char v1, p0, v4

    ushr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v3, v0

    .line 161
    mul-int/lit8 v0, v4, 0x2

    add-int/lit8 v0, v0, 0x1

    aget-char v1, p0, v4

    int-to-byte v1, v1

    aput-byte v1, v3, v0

    .line 158
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 164
    :cond_0
    return-object v3

    .line 168
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method


# virtual methods
.method public ˊ([B[BI)V
    .locals 0

    .line 34
    iput-object p1, p0, Lorg/spongycastle/crypto/PBEParametersGenerator;->aFe:[B

    .line 35
    iput-object p2, p0, Lorg/spongycastle/crypto/PBEParametersGenerator;->aqg:[B

    .line 36
    iput p3, p0, Lorg/spongycastle/crypto/PBEParametersGenerator;->aFf:I

    .line 37
    return-void
.end method

.method public abstract ر(I)Lorg/spongycastle/crypto/CipherParameters;
.end method

.method public abstract ڎ(I)Lorg/spongycastle/crypto/CipherParameters;
.end method

.method public abstract ᵙ(II)Lorg/spongycastle/crypto/CipherParameters;
.end method
