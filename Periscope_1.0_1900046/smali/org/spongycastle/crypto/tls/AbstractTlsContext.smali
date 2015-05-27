.class abstract Lorg/spongycastle/crypto/tls/AbstractTlsContext;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/tls/TlsContext;


# static fields
.field private static aOT:J


# instance fields
.field private aSK:Lorg/spongycastle/crypto/prng/RandomGenerator;

.field private aSL:Ljava/security/SecureRandom;

.field private aSM:Lorg/spongycastle/crypto/tls/SecurityParameters;

.field private aSN:Lorg/spongycastle/crypto/tls/ProtocolVersion;

.field private aSO:Lorg/spongycastle/crypto/tls/ProtocolVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    invoke-static {}, Lorg/spongycastle/util/Times;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->aOT:J

    return-void
.end method


# virtual methods
.method public lF()Lorg/spongycastle/crypto/prng/RandomGenerator;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->aSK:Lorg/spongycastle/crypto/prng/RandomGenerator;

    return-object v0
.end method

.method public lG()Ljava/security/SecureRandom;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->aSL:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public lH()Lorg/spongycastle/crypto/tls/SecurityParameters;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->aSM:Lorg/spongycastle/crypto/tls/SecurityParameters;

    return-object v0
.end method

.method public lI()Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->aSN:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    return-object v0
.end method

.method public lJ()Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->aSO:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    return-object v0
.end method

.method ˋ(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->aSN:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 63
    return-void
.end method

.method ˎ(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->aSO:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 73
    return-void
.end method
