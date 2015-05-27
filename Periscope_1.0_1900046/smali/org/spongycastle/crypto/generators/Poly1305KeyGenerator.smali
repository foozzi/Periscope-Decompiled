.class public Lorg/spongycastle/crypto/generators/Poly1305KeyGenerator;
.super Lorg/spongycastle/crypto/CipherKeyGenerator;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lorg/spongycastle/crypto/CipherKeyGenerator;-><init>()V

    return-void
.end method

.method private static ˋ(BB)V
    .locals 2

    .line 111
    xor-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid format for r portion of Poly1305 key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    return-void
.end method

.method public static ᐟ([B)V
    .locals 2

    .line 94
    array-length v0, p0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Poly1305 key must be 256 bits."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    const/16 v0, 0x13

    aget-byte v0, p0, v0

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/generators/Poly1305KeyGenerator;->ˋ(BB)V

    .line 100
    const/16 v0, 0x17

    aget-byte v0, p0, v0

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/generators/Poly1305KeyGenerator;->ˋ(BB)V

    .line 101
    const/16 v0, 0x1b

    aget-byte v0, p0, v0

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/generators/Poly1305KeyGenerator;->ˋ(BB)V

    .line 102
    const/16 v0, 0x1f

    aget-byte v0, p0, v0

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/generators/Poly1305KeyGenerator;->ˋ(BB)V

    .line 104
    const/16 v0, 0x14

    aget-byte v0, p0, v0

    const/4 v1, -0x4

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/generators/Poly1305KeyGenerator;->ˋ(BB)V

    .line 105
    const/16 v0, 0x18

    aget-byte v0, p0, v0

    const/4 v1, -0x4

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/generators/Poly1305KeyGenerator;->ˋ(BB)V

    .line 106
    const/16 v0, 0x1c

    aget-byte v0, p0, v0

    const/4 v1, -0x4

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/generators/Poly1305KeyGenerator;->ˋ(BB)V

    .line 107
    return-void
.end method

.method public static יּ([B)V
    .locals 2

    .line 63
    array-length v0, p0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Poly1305 key must be 256 bits."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    const/16 v0, 0x13

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    const/16 v1, 0x13

    aput-byte v0, p0, v1

    .line 72
    const/16 v0, 0x17

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    const/16 v1, 0x17

    aput-byte v0, p0, v1

    .line 73
    const/16 v0, 0x1b

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    const/16 v1, 0x1b

    aput-byte v0, p0, v1

    .line 74
    const/16 v0, 0x1f

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    const/16 v1, 0x1f

    aput-byte v0, p0, v1

    .line 79
    const/16 v0, 0x14

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, -0x4

    int-to-byte v0, v0

    const/16 v1, 0x14

    aput-byte v0, p0, v1

    .line 80
    const/16 v0, 0x18

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, -0x4

    int-to-byte v0, v0

    const/16 v1, 0x18

    aput-byte v0, p0, v1

    .line 81
    const/16 v0, 0x1c

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, -0x4

    int-to-byte v0, v0

    const/16 v1, 0x1c

    aput-byte v0, p0, v1

    .line 82
    return-void
.end method


# virtual methods
.method public iI()[B
    .locals 1

    .line 42
    invoke-super {p0}, Lorg/spongycastle/crypto/CipherKeyGenerator;->iI()[B

    move-result-object v0

    .line 43
    invoke-static {v0}, Lorg/spongycastle/crypto/generators/Poly1305KeyGenerator;->יּ([B)V

    .line 44
    return-object v0
.end method

.method public ˊ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V
    .locals 3

    .line 32
    new-instance v0, Lorg/spongycastle/crypto/KeyGenerationParameters;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/KeyGenerationParameters;->iN()Ljava/security/SecureRandom;

    move-result-object v1

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-super {p0, v0}, Lorg/spongycastle/crypto/CipherKeyGenerator;->ˊ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 33
    return-void
.end method
