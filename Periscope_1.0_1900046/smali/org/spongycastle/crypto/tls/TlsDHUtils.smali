.class public Lorg/spongycastle/crypto/tls/TlsDHUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final ONE:Ljava/math/BigInteger;

.field static final aKc:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsDHUtils;->ONE:Ljava/math/BigInteger;

    .line 21
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsDHUtils;->aKc:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ˊ(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/DHParameters;)Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    .locals 2

    .line 43
    new-instance v1, Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;

    invoke-direct {v1}, Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;-><init>()V

    .line 44
    new-instance v0, Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;

    invoke-direct {v0, p0, p1}, Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/DHParameters;)V

    invoke-virtual {v1, v0}, Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;->ˊ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 45
    invoke-virtual {v1}, Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;->iF()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    return-object v0
.end method

.method public static ˊ(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/DHParameters;Ljava/io/OutputStream;)Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;
    .locals 3

    .line 51
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->ˊ(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/DHParameters;)Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v1

    .line 53
    invoke-virtual {v1}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->iD()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    move-object v2, v0

    .line 54
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->ˊ(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    .line 56
    invoke-virtual {v1}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->iE()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    return-object v0
.end method

.method public static ˊ(Lorg/spongycastle/crypto/params/DHPublicKeyParameters;)Lorg/spongycastle/crypto/params/DHPublicKeyParameters;
    .locals 6

    .line 73
    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v2

    .line 74
    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;->kA()Lorg/spongycastle/crypto/params/DHParameters;

    move-result-object v3

    .line 75
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v4

    .line 76
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v5

    .line 78
    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 82
    :cond_0
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsDHUtils;->aKc:Ljava/math/BigInteger;

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_1

    sget-object v0, Lorg/spongycastle/crypto/tls/TlsDHUtils;->aKc:Ljava/math/BigInteger;

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_2

    .line 84
    :cond_1
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 86
    :cond_2
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsDHUtils;->aKc:Ljava/math/BigInteger;

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_3

    sget-object v0, Lorg/spongycastle/crypto/tls/TlsDHUtils;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_4

    .line 88
    :cond_3
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 93
    :cond_4
    return-object p0
.end method

.method public static ˊ(Ljava/math/BigInteger;Ljava/io/OutputStream;)V
    .locals 1

    .line 103
    invoke-static {p0}, Lorg/spongycastle/util/BigIntegers;->ᵎ(Ljava/math/BigInteger;)[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˎ([BLjava/io/OutputStream;)V

    .line 104
    return-void
.end method

.method public static ˊ(Lorg/spongycastle/crypto/params/DHPublicKeyParameters;Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;)[B
    .locals 3

    .line 30
    new-instance v1, Lorg/spongycastle/crypto/agreement/DHBasicAgreement;

    invoke-direct {v1}, Lorg/spongycastle/crypto/agreement/DHBasicAgreement;-><init>()V

    .line 31
    invoke-virtual {v1, p1}, Lorg/spongycastle/crypto/agreement/DHBasicAgreement;->ˊ(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 32
    invoke-virtual {v1, p0}, Lorg/spongycastle/crypto/agreement/DHBasicAgreement;->ˋ(Lorg/spongycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object v2

    .line 38
    invoke-static {v2}, Lorg/spongycastle/util/BigIntegers;->ᵎ(Ljava/math/BigInteger;)[B

    move-result-object v0

    return-object v0
.end method

.method public static ˋ(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/DHParameters;Ljava/io/OutputStream;)Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;
    .locals 4

    .line 62
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->ˊ(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/DHParameters;)Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v1

    .line 64
    invoke-virtual {v1}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->iD()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    move-object v2, v0

    .line 65
    new-instance v3, Lorg/spongycastle/crypto/tls/ServerDHParams;

    invoke-direct {v3, v2}, Lorg/spongycastle/crypto/tls/ServerDHParams;-><init>(Lorg/spongycastle/crypto/params/DHPublicKeyParameters;)V

    .line 66
    invoke-virtual {v3, p2}, Lorg/spongycastle/crypto/tls/ServerDHParams;->encode(Ljava/io/OutputStream;)V

    .line 68
    invoke-virtual {v1}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->iE()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    return-object v0
.end method

.method public static ᐨ(Ljava/io/InputStream;)Ljava/math/BigInteger;
    .locals 3

    .line 98
    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᴵ(Ljava/io/InputStream;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method
