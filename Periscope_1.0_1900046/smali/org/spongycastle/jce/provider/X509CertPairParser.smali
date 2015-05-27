.class public Lorg/spongycastle/jce/provider/X509CertPairParser;
.super Lorg/spongycastle/x509/X509StreamParserSpi;
.source ""


# instance fields
.field private aXU:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lorg/spongycastle/x509/X509StreamParserSpi;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/X509CertPairParser;->aXU:Ljava/io/InputStream;

    return-void
.end method

.method private ˡ(Ljava/io/InputStream;)Lorg/spongycastle/x509/X509CertificatePair;
    .locals 4

    .line 27
    new-instance v1, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v1, p1}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 28
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object v2, v0

    .line 29
    invoke-static {v2}, Lorg/spongycastle/asn1/x509/CertificatePair;->ﭔ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/CertificatePair;

    move-result-object v3

    .line 30
    new-instance v0, Lorg/spongycastle/x509/X509CertificatePair;

    invoke-direct {v0, v3}, Lorg/spongycastle/x509/X509CertificatePair;-><init>(Lorg/spongycastle/asn1/x509/CertificatePair;)V

    return-object v0
.end method


# virtual methods
.method public pb()Ljava/lang/Object;
    .locals 3

    .line 48
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CertPairParser;->aXU:Ljava/io/InputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 49
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CertPairParser;->aXU:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 51
    const/4 v0, -0x1

    if-ne v2, v0, :cond_0

    .line 53
    const/4 v0, 0x0

    return-object v0

    .line 56
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CertPairParser;->aXU:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 57
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CertPairParser;->aXU:Ljava/io/InputStream;

    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/X509CertPairParser;->ˡ(Ljava/io/InputStream;)Lorg/spongycastle/x509/X509CertificatePair;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0

    .line 59
    :catch_0
    move-exception v2

    .line 61
    new-instance v0, Lorg/spongycastle/x509/util/StreamParsingException;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/x509/util/StreamParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public ˆ(Ljava/io/InputStream;)V
    .locals 2

    .line 35
    iput-object p1, p0, Lorg/spongycastle/jce/provider/X509CertPairParser;->aXU:Ljava/io/InputStream;

    .line 37
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CertPairParser;->aXU:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lorg/spongycastle/jce/provider/X509CertPairParser;->aXU:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/X509CertPairParser;->aXU:Ljava/io/InputStream;

    .line 41
    :cond_0
    return-void
.end method
