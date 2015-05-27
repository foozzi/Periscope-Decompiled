.class public Lorg/spongycastle/crypto/tls/NewSessionTicket;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected aTO:J

.field protected aTP:[B


# direct methods
.method public constructor <init>(J[B)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide p1, p0, Lorg/spongycastle/crypto/tls/NewSessionTicket;->aTO:J

    .line 15
    iput-object p3, p0, Lorg/spongycastle/crypto/tls/NewSessionTicket;->aTP:[B

    .line 16
    return-void
.end method

.method public static ˑ(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/NewSessionTicket;
    .locals 4

    .line 51
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->י(Ljava/io/InputStream;)J

    move-result-wide v1

    .line 52
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᴵ(Ljava/io/InputStream;)[B

    move-result-object v3

    .line 53
    new-instance v0, Lorg/spongycastle/crypto/tls/NewSessionTicket;

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/crypto/tls/NewSessionTicket;-><init>(J[B)V

    return-object v0
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 2

    .line 37
    iget-wide v0, p0, Lorg/spongycastle/crypto/tls/NewSessionTicket;->aTO:J

    invoke-static {v0, v1, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(JLjava/io/OutputStream;)V

    .line 38
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/NewSessionTicket;->aTP:[B

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˎ([BLjava/io/OutputStream;)V

    .line 39
    return-void
.end method
