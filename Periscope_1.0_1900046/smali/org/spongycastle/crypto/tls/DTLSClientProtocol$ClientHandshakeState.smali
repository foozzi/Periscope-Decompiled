.class public Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/tls/DTLSClientProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClientHandshakeState"
.end annotation


# instance fields
.field aSI:I

.field aSJ:S

.field aTd:Lorg/spongycastle/crypto/tls/TlsClient;

.field aTe:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

.field aTf:Lorg/spongycastle/crypto/tls/TlsSession;

.field aTg:Lorg/spongycastle/crypto/tls/SessionParameters;

.field aTh:Lorg/spongycastle/crypto/tls/SessionParameters$Builder;

.field aTi:[I

.field aTj:[S

.field aTk:Ljava/util/Hashtable;

.field aTl:[B

.field aTm:Z

.field aTn:S

.field aTo:Z

.field aTp:Z

.field aTq:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

.field aTr:Lorg/spongycastle/crypto/tls/TlsAuthentication;

.field aTs:Lorg/spongycastle/crypto/tls/CertificateStatus;

.field aTt:Lorg/spongycastle/crypto/tls/CertificateRequest;

.field aTu:Lorg/spongycastle/crypto/tls/TlsCredentials;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 808
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 810
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->aTd:Lorg/spongycastle/crypto/tls/TlsClient;

    .line 811
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->aTe:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    .line 812
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->aTf:Lorg/spongycastle/crypto/tls/TlsSession;

    .line 813
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->aTg:Lorg/spongycastle/crypto/tls/SessionParameters;

    .line 814
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->aTh:Lorg/spongycastle/crypto/tls/SessionParameters$Builder;

    .line 815
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->aTi:[I

    .line 816
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->aTj:[S

    .line 817
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->aTk:Ljava/util/Hashtable;

    .line 818
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->aTl:[B

    .line 819
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->aSI:I

    .line 820
    const/4 v0, -0x1

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->aSJ:S

    .line 821
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->aTm:Z

    .line 822
    const/4 v0, -0x1

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->aTn:S

    .line 823
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->aTo:Z

    .line 824
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->aTp:Z

    .line 825
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->aTq:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    .line 826
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->aTr:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    .line 827
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->aTs:Lorg/spongycastle/crypto/tls/CertificateStatus;

    .line 828
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->aTt:Lorg/spongycastle/crypto/tls/CertificateRequest;

    .line 829
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->aTu:Lorg/spongycastle/crypto/tls/TlsCredentials;

    return-void
.end method
