.class public Lorg/spongycastle/jce/provider/X509CRLParser;
.super Lorg/spongycastle/x509/X509StreamParserSpi;
.source ""


# static fields
.field private static final bbO:Lorg/spongycastle/jce/provider/PEMUtil;


# instance fields
.field private aXS:Lorg/spongycastle/asn1/ASN1Set;

.field private aXT:I

.field private aXU:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lorg/spongycastle/jce/provider/PEMUtil;

    const-string v1, "CRL"

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/PEMUtil;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/jce/provider/X509CRLParser;->bbO:Lorg/spongycastle/jce/provider/PEMUtil;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lorg/spongycastle/x509/X509StreamParserSpi;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/X509CRLParser;->aXS:Lorg/spongycastle/asn1/ASN1Set;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/jce/provider/X509CRLParser;->aXT:I

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/X509CRLParser;->aXU:Ljava/io/InputStream;

    return-void
.end method

.method private nJ()Ljava/security/cert/CRL;
    .locals 4

    .line 57
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CRLParser;->aXS:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/spongycastle/jce/provider/X509CRLParser;->aXT:I

    iget-object v1, p0, Lorg/spongycastle/jce/provider/X509CRLParser;->aXS:Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 59
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 62
    :cond_1
    new-instance v0, Lorg/spongycastle/jce/provider/X509CRLObject;

    iget-object v1, p0, Lorg/spongycastle/jce/provider/X509CRLParser;->aXS:Lorg/spongycastle/asn1/ASN1Set;

    iget v2, p0, Lorg/spongycastle/jce/provider/X509CRLParser;->aXT:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/spongycastle/jce/provider/X509CRLParser;->aXT:I

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1Set;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/CertificateList;->丶(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/CertificateList;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/X509CRLObject;-><init>(Lorg/spongycastle/asn1/x509/CertificateList;)V

    return-object v0
.end method

.method private ˇ(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .locals 5

    .line 36
    new-instance v3, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v3, p1}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 37
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object v4, v0

    .line 39
    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v0, :cond_0

    .line 42
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->aeC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Lorg/spongycastle/asn1/pkcs/SignedData;

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->ᐝ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/pkcs/SignedData;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/pkcs/SignedData;->gp()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/X509CRLParser;->aXS:Lorg/spongycastle/asn1/ASN1Set;

    .line 47
    invoke-direct {p0}, Lorg/spongycastle/jce/provider/X509CRLParser;->nJ()Ljava/security/cert/CRL;

    move-result-object v0

    return-object v0

    .line 51
    :cond_0
    new-instance v0, Lorg/spongycastle/jce/provider/X509CRLObject;

    invoke-static {v4}, Lorg/spongycastle/asn1/x509/CertificateList;->丶(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/CertificateList;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/X509CRLObject;-><init>(Lorg/spongycastle/asn1/x509/CertificateList;)V

    return-object v0
.end method

.method private ⁱ(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .locals 3

    .line 71
    sget-object v0, Lorg/spongycastle/jce/provider/X509CRLParser;->bbO:Lorg/spongycastle/jce/provider/PEMUtil;

    invoke-virtual {v0, p1}, Lorg/spongycastle/jce/provider/PEMUtil;->ﹺ(Ljava/io/InputStream;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    .line 73
    if-eqz v2, :cond_0

    .line 75
    new-instance v0, Lorg/spongycastle/jce/provider/X509CRLObject;

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/CertificateList;->丶(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/CertificateList;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/X509CRLObject;-><init>(Lorg/spongycastle/asn1/x509/CertificateList;)V

    return-object v0

    .line 78
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public pb()Ljava/lang/Object;
    .locals 3

    .line 98
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CRLParser;->aXS:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v0, :cond_1

    .line 100
    iget v0, p0, Lorg/spongycastle/jce/provider/X509CRLParser;->aXT:I

    iget-object v1, p0, Lorg/spongycastle/jce/provider/X509CRLParser;->aXS:Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 102
    invoke-direct {p0}, Lorg/spongycastle/jce/provider/X509CRLParser;->nJ()Ljava/security/cert/CRL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 106
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lorg/spongycastle/jce/provider/X509CRLParser;->aXS:Lorg/spongycastle/asn1/ASN1Set;

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/jce/provider/X509CRLParser;->aXT:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 108
    const/4 v0, 0x0

    return-object v0

    .line 112
    :cond_1
    :try_start_2
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CRLParser;->aXU:Ljava/io/InputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 113
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CRLParser;->aXU:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    .line 115
    const/4 v0, -0x1

    if-ne v2, v0, :cond_2

    .line 117
    const/4 v0, 0x0

    return-object v0

    .line 120
    :cond_2
    const/16 v0, 0x30

    if-eq v2, v0, :cond_3

    .line 122
    :try_start_3
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CRLParser;->aXU:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 123
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CRLParser;->aXU:Ljava/io/InputStream;

    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/X509CRLParser;->ⁱ(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    return-object v0

    .line 127
    :cond_3
    :try_start_4
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CRLParser;->aXU:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 128
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CRLParser;->aXU:Ljava/io/InputStream;

    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/X509CRLParser;->ˇ(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v0

    return-object v0

    .line 131
    :catch_0
    move-exception v2

    .line 133
    new-instance v0, Lorg/spongycastle/x509/util/StreamParsingException;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/x509/util/StreamParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public ˆ(Ljava/io/InputStream;)V
    .locals 2

    .line 83
    iput-object p1, p0, Lorg/spongycastle/jce/provider/X509CRLParser;->aXU:Ljava/io/InputStream;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/X509CRLParser;->aXS:Lorg/spongycastle/asn1/ASN1Set;

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/jce/provider/X509CRLParser;->aXT:I

    .line 87
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CRLParser;->aXU:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lorg/spongycastle/jce/provider/X509CRLParser;->aXU:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/X509CRLParser;->aXU:Ljava/io/InputStream;

    .line 91
    :cond_0
    return-void
.end method
