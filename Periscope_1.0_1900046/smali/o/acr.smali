.class public Lo/acr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/acs;


# instance fields
.field private final bxY:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {p1}, Lorg/spongycastle/util/encoders/Base64;->ᵥ(Ljava/lang/String;)[B

    move-result-object v2

    .line 25
    const-string v0, "X.509"

    :try_start_0
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 26
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    .line 27
    invoke-virtual {v5}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 31
    goto :goto_0

    .line 28
    :catch_0
    move-exception v5

    .line 29
    const/4 v4, 0x0

    .line 30
    const-string v0, "KeyLoader"

    const-string v1, "cert"

    invoke-static {v0, v1, v5}, Lo/akk;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    :goto_0
    iput-object v4, p0, Lo/acr;->bxY:Ljava/security/PublicKey;

    .line 33
    return-void
.end method


# virtual methods
.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    .line 37
    iget-object v0, p0, Lo/acr;->bxY:Ljava/security/PublicKey;

    return-object v0
.end method
