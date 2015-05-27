.class public Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/tls/DTLSServerProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServerHandshakeState"
.end annotation


# instance fields
.field aSI:I

.field aSJ:S

.field aTA:Lorg/spongycastle/crypto/tls/TlsCredentials;

.field aTB:S

.field aTC:Lorg/spongycastle/crypto/tls/Certificate;

.field aTm:Z

.field aTn:S

.field aTo:Z

.field aTp:Z

.field aTq:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

.field aTt:Lorg/spongycastle/crypto/tls/CertificateRequest;

.field aTx:Lorg/spongycastle/crypto/tls/TlsServer;

.field aTy:Lorg/spongycastle/crypto/tls/TlsServerContextImpl;

.field aTz:Ljava/util/Hashtable;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 649
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->aTx:Lorg/spongycastle/crypto/tls/TlsServer;

    .line 650
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->aTy:Lorg/spongycastle/crypto/tls/TlsServerContextImpl;

    .line 654
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->aSI:I

    .line 655
    const/4 v0, -0x1

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->aSJ:S

    .line 656
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->aTm:Z

    .line 657
    const/4 v0, -0x1

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->aTn:S

    .line 658
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->aTo:Z

    .line 659
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->aTp:Z

    .line 660
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->aTz:Ljava/util/Hashtable;

    .line 661
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->aTq:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    .line 662
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->aTA:Lorg/spongycastle/crypto/tls/TlsCredentials;

    .line 663
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->aTt:Lorg/spongycastle/crypto/tls/CertificateRequest;

    .line 664
    const/4 v0, -0x1

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->aTB:S

    .line 665
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->aTC:Lorg/spongycastle/crypto/tls/Certificate;

    return-void
.end method
