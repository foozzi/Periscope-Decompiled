.class public Lorg/spongycastle/crypto/tls/ServerDHParams;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected aUD:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/params/DHPublicKeyParameters;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    if-nez p1, :cond_0

    .line 19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'publicKey\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_0
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/ServerDHParams;->aUD:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    .line 23
    return-void
.end method

.method public static ـ(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/ServerDHParams;
    .locals 6

    .line 57
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->ᐨ(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v3

    .line 58
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->ᐨ(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v4

    .line 59
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->ᐨ(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v5

    .line 61
    new-instance v0, Lorg/spongycastle/crypto/tls/ServerDHParams;

    new-instance v1, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    new-instance v2, Lorg/spongycastle/crypto/params/DHParameters;

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v1, v5, v2}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DHParameters;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/ServerDHParams;-><init>(Lorg/spongycastle/crypto/params/DHPublicKeyParameters;)V

    return-object v0
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 3

    .line 39
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/ServerDHParams;->aUD:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;->kA()Lorg/spongycastle/crypto/params/DHParameters;

    move-result-object v1

    .line 40
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/ServerDHParams;->aUD:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v2

    .line 42
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->ˊ(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    .line 43
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->ˊ(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    .line 44
    invoke-static {v2, p1}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->ˊ(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    .line 45
    return-void
.end method

.method public mH()Lorg/spongycastle/crypto/params/DHPublicKeyParameters;
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/ServerDHParams;->aUD:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    return-object v0
.end method
