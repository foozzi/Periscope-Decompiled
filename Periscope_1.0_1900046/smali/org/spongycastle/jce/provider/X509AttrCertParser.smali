.class public Lorg/spongycastle/jce/provider/X509AttrCertParser;
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

    .line 25
    new-instance v0, Lorg/spongycastle/jce/provider/PEMUtil;

    const-string v1, "ATTRIBUTE CERTIFICATE"

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/PEMUtil;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->bbO:Lorg/spongycastle/jce/provider/PEMUtil;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lorg/spongycastle/x509/X509StreamParserSpi;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->aXS:Lorg/spongycastle/asn1/ASN1Set;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->aXT:I

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->aXU:Ljava/io/InputStream;

    return-void
.end method

.method private pa()Lorg/spongycastle/x509/X509AttributeCertificate;
    .locals 4

    .line 56
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->aXS:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v0, :cond_1

    .line 58
    :goto_0
    iget v0, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->aXT:I

    iget-object v1, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->aXS:Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 60
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->aXS:Lorg/spongycastle/asn1/ASN1Set;

    iget v1, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->aXT:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->aXT:I

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Set;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    .line 62
    instance-of v0, v3, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_0

    move-object v0, v3

    check-cast v0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eW()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 64
    new-instance v0, Lorg/spongycastle/x509/X509V2AttributeCertificate;

    move-object v1, v3

    check-cast v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->ᐝ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/x509/X509V2AttributeCertificate;-><init>([B)V

    return-object v0

    .line 67
    :cond_0
    goto :goto_0

    .line 70
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private ʳ(Ljava/io/InputStream;)Lorg/spongycastle/x509/X509AttributeCertificate;
    .locals 5

    .line 35
    new-instance v3, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v3, p1}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 36
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object v4, v0

    .line 38
    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v0, :cond_0

    .line 41
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->aeC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Lorg/spongycastle/asn1/pkcs/SignedData;

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->ᐝ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/pkcs/SignedData;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/pkcs/SignedData;->go()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->aXS:Lorg/spongycastle/asn1/ASN1Set;

    .line 46
    invoke-direct {p0}, Lorg/spongycastle/jce/provider/X509AttrCertParser;->pa()Lorg/spongycastle/x509/X509AttributeCertificate;

    move-result-object v0

    return-object v0

    .line 50
    :cond_0
    new-instance v0, Lorg/spongycastle/x509/X509V2AttributeCertificate;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1Sequence;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/x509/X509V2AttributeCertificate;-><init>([B)V

    return-object v0
.end method

.method private ʴ(Ljava/io/InputStream;)Lorg/spongycastle/x509/X509AttributeCertificate;
    .locals 3

    .line 77
    sget-object v0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->bbO:Lorg/spongycastle/jce/provider/PEMUtil;

    invoke-virtual {v0, p1}, Lorg/spongycastle/jce/provider/PEMUtil;->ﹺ(Ljava/io/InputStream;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    .line 79
    if-eqz v2, :cond_0

    .line 81
    new-instance v0, Lorg/spongycastle/x509/X509V2AttributeCertificate;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/x509/X509V2AttributeCertificate;-><init>([B)V

    return-object v0

    .line 84
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public pb()Ljava/lang/Object;
    .locals 3

    .line 104
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->aXS:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v0, :cond_1

    .line 106
    iget v0, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->aXT:I

    iget-object v1, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->aXS:Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 108
    invoke-direct {p0}, Lorg/spongycastle/jce/provider/X509AttrCertParser;->pa()Lorg/spongycastle/x509/X509AttributeCertificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 112
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->aXS:Lorg/spongycastle/asn1/ASN1Set;

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->aXT:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 114
    const/4 v0, 0x0

    return-object v0

    .line 118
    :cond_1
    :try_start_2
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->aXU:Ljava/io/InputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 119
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->aXU:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    .line 121
    const/4 v0, -0x1

    if-ne v2, v0, :cond_2

    .line 123
    const/4 v0, 0x0

    return-object v0

    .line 126
    :cond_2
    const/16 v0, 0x30

    if-eq v2, v0, :cond_3

    .line 128
    :try_start_3
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->aXU:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 129
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->aXU:Ljava/io/InputStream;

    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/X509AttrCertParser;->ʴ(Ljava/io/InputStream;)Lorg/spongycastle/x509/X509AttributeCertificate;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    return-object v0

    .line 133
    :cond_3
    :try_start_4
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->aXU:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 134
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->aXU:Ljava/io/InputStream;

    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/X509AttrCertParser;->ʳ(Ljava/io/InputStream;)Lorg/spongycastle/x509/X509AttributeCertificate;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v0

    return-object v0

    .line 137
    :catch_0
    move-exception v2

    .line 139
    new-instance v0, Lorg/spongycastle/x509/util/StreamParsingException;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/x509/util/StreamParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public ˆ(Ljava/io/InputStream;)V
    .locals 2

    .line 89
    iput-object p1, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->aXU:Ljava/io/InputStream;

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->aXS:Lorg/spongycastle/asn1/ASN1Set;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->aXT:I

    .line 93
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->aXU:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->aXU:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->aXU:Ljava/io/InputStream;

    .line 97
    :cond_0
    return-void
.end method
