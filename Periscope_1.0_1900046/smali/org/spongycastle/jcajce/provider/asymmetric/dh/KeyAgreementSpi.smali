.class public Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;
.super Ljavax/crypto/KeyAgreementSpi;
.source ""


# static fields
.field private static final aWA:Ljava/util/Hashtable;


# instance fields
.field private aFB:Ljava/math/BigInteger;

.field private aFO:Ljava/math/BigInteger;

.field private aFz:Ljava/math/BigInteger;

.field private aWz:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 35
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->aWA:Ljava/util/Hashtable;

    .line 39
    const/16 v0, 0x40

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 40
    const/16 v0, 0xc0

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 41
    const/16 v0, 0x80

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 42
    const/16 v0, 0x100

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 44
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->aWA:Ljava/util/Hashtable;

    const-string v1, "DES"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->aWA:Ljava/util/Hashtable;

    const-string v1, "DESEDE"

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->aWA:Ljava/util/Hashtable;

    const-string v1, "BLOWFISH"

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->aWA:Ljava/util/Hashtable;

    const-string v1, "AES"

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljavax/crypto/KeyAgreementSpi;-><init>()V

    return-void
.end method

.method private ʽ(Ljava/math/BigInteger;)[B
    .locals 6

    .line 57
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->aFz:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v3, v0, 0x8

    .line 59
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    .line 61
    array-length v0, v4

    if-ne v0, v3, :cond_0

    .line 63
    return-object v4

    .line 66
    :cond_0
    const/4 v0, 0x0

    aget-byte v0, v4, v0

    if-nez v0, :cond_1

    array-length v0, v4

    add-int/lit8 v1, v3, 0x1

    if-ne v0, v1, :cond_1

    .line 68
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    new-array v5, v0, [B

    .line 70
    array-length v0, v5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v4, v1, v5, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    return-object v5

    .line 76
    :cond_1
    new-array v5, v3, [B

    .line 78
    array-length v0, v5

    array-length v1, v4

    sub-int/2addr v0, v1

    array-length v1, v4

    const/4 v2, 0x0

    invoke-static {v4, v2, v5, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    return-object v5
.end method


# virtual methods
.method protected engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .locals 4

    .line 88
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->aFO:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Diffie-Hellman not initialised."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    instance-of v0, p1, Ljavax/crypto/interfaces/DHPublicKey;

    if-nez v0, :cond_1

    .line 95
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "DHKeyAgreement doPhase requires DHPublicKey"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_1
    move-object v0, p1

    check-cast v0, Ljavax/crypto/interfaces/DHPublicKey;

    move-object v3, v0

    .line 99
    invoke-interface {v3}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->aFB:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->aFz:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 101
    :cond_2
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "DHPublicKey not for this KeyAgreement!"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_3
    if-eqz p2, :cond_4

    .line 106
    move-object v0, p1

    check-cast v0, Ljavax/crypto/interfaces/DHPublicKey;

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->aFO:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->aFz:Ljava/math/BigInteger;

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->aWz:Ljava/math/BigInteger;

    .line 107
    const/4 v0, 0x0

    return-object v0

    .line 111
    :cond_4
    move-object v0, p1

    check-cast v0, Ljavax/crypto/interfaces/DHPublicKey;

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->aFO:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->aFz:Ljava/math/BigInteger;

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->aWz:Ljava/math/BigInteger;

    .line 114
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->aWz:Ljava/math/BigInteger;

    invoke-interface {v3}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;-><init>(Ljava/math/BigInteger;Ljavax/crypto/spec/DHParameterSpec;)V

    return-object v0
.end method

.method protected engineGenerateSecret([BI)I
    .locals 3

    .line 133
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->aFO:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Diffie-Hellman not initialised."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->aWz:Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->ʽ(Ljava/math/BigInteger;)[B

    move-result-object v2

    .line 140
    array-length v0, p1

    sub-int/2addr v0, p2

    array-length v1, v2

    if-ge v0, v1, :cond_1

    .line 142
    new-instance v0, Ljavax/crypto/ShortBufferException;

    const-string v1, "DHKeyAgreement - buffer too short"

    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_1
    array-length v0, v2

    const/4 v1, 0x0

    invoke-static {v2, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    array-length v0, v2

    return v0
.end method

.method protected engineGenerateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 7

    .line 153
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->aFO:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Diffie-Hellman not initialised."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    invoke-static {p1}, Lorg/spongycastle/util/Strings;->ʟ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 159
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->aWz:Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->ʽ(Ljava/math/BigInteger;)[B

    move-result-object v4

    .line 161
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->aWA:Ljava/util/Hashtable;

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->aWA:Ljava/util/Hashtable;

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    move-object v5, v0

    .line 165
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    new-array v6, v0, [B

    .line 166
    array-length v0, v6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v4, v1, v6, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    const-string v0, "DES"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    invoke-static {v6}, Lorg/spongycastle/crypto/params/DESParameters;->ı([B)V

    .line 173
    :cond_1
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v0, v6, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0

    .line 176
    :cond_2
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v0, v4, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method protected engineGenerateSecret()[B
    .locals 2

    .line 120
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->aFO:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Diffie-Hellman not initialised."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->aWz:Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->ʽ(Ljava/math/BigInteger;)[B

    move-result-object v0

    return-object v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .locals 3

    .line 216
    instance-of v0, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "DHKeyAgreement requires DHPrivateKey"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    move-object v0, p1

    check-cast v0, Ljavax/crypto/interfaces/DHPrivateKey;

    move-object v2, v0

    .line 223
    invoke-interface {v2}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->aFz:Ljava/math/BigInteger;

    .line 224
    invoke-interface {v2}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->aFB:Ljava/math/BigInteger;

    .line 225
    invoke-interface {v2}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->aWz:Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->aFO:Ljava/math/BigInteger;

    .line 226
    return-void
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 4

    .line 185
    instance-of v0, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "DHKeyAgreement requires DHPrivateKey for initialisation"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    move-object v0, p1

    check-cast v0, Ljavax/crypto/interfaces/DHPrivateKey;

    move-object v2, v0

    .line 191
    if-eqz p2, :cond_2

    .line 193
    instance-of v0, p2, Ljavax/crypto/spec/DHParameterSpec;

    if-nez v0, :cond_1

    .line 195
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "DHKeyAgreement only accepts DHParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_1
    move-object v0, p2

    check-cast v0, Ljavax/crypto/spec/DHParameterSpec;

    move-object v3, v0

    .line 199
    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->aFz:Ljava/math/BigInteger;

    .line 200
    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->aFB:Ljava/math/BigInteger;

    .line 201
    goto :goto_0

    .line 204
    :cond_2
    invoke-interface {v2}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->aFz:Ljava/math/BigInteger;

    .line 205
    invoke-interface {v2}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->aFB:Ljava/math/BigInteger;

    .line 208
    :goto_0
    invoke-interface {v2}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->aWz:Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->aFO:Ljava/math/BigInteger;

    .line 209
    return-void
.end method
