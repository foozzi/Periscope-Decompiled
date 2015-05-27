.class public Lorg/spongycastle/asn1/x509/Certificate;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field agu:Lorg/spongycastle/asn1/ASN1Sequence;

.field apX:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field ayu:Lorg/spongycastle/asn1/x509/TBSCertificate;

.field ayv:Lorg/spongycastle/asn1/DERBitString;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/Certificate;->agu:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 59
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/TBSCertificate;->د(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/Certificate;->ayu:Lorg/spongycastle/asn1/x509/TBSCertificate;

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->ᓪ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/Certificate;->apX:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 64
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/DERBitString;->ʸ(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/Certificate;->ayv:Lorg/spongycastle/asn1/DERBitString;

    goto :goto_0

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sequence wrong size for a certificate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :goto_0
    return-void
.end method

.method public static ˈ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/Certificate;
    .locals 1

    .line 33
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->ᐝ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/Certificate;->ⅰ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public static ⅰ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Certificate;
    .locals 2

    .line 39
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/Certificate;

    if-eqz v0, :cond_0

    .line 41
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/x509/Certificate;

    return-object v0

    .line 43
    :cond_0
    if-eqz p0, :cond_1

    .line 45
    new-instance v0, Lorg/spongycastle/asn1/x509/Certificate;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/Certificate;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 48
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/Certificate;->agu:Lorg/spongycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public gU()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/Certificate;->ayu:Lorg/spongycastle/asn1/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/TBSCertificate;->gU()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    return-object v0
.end method

.method public hd()Lorg/spongycastle/asn1/x509/TBSCertificate;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/Certificate;->ayu:Lorg/spongycastle/asn1/x509/TBSCertificate;

    return-object v0
.end method

.method public he()I
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/Certificate;->ayu:Lorg/spongycastle/asn1/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/TBSCertificate;->he()I

    move-result v0

    return v0
.end method

.method public hf()Lorg/spongycastle/asn1/x500/X500Name;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/Certificate;->ayu:Lorg/spongycastle/asn1/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/TBSCertificate;->hf()Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public hg()Lorg/spongycastle/asn1/x509/Time;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/Certificate;->ayu:Lorg/spongycastle/asn1/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/TBSCertificate;->hg()Lorg/spongycastle/asn1/x509/Time;

    move-result-object v0

    return-object v0
.end method

.method public hh()Lorg/spongycastle/asn1/x509/Time;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/Certificate;->ayu:Lorg/spongycastle/asn1/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/TBSCertificate;->hh()Lorg/spongycastle/asn1/x509/Time;

    move-result-object v0

    return-object v0
.end method

.method public hi()Lorg/spongycastle/asn1/x500/X500Name;
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/Certificate;->ayu:Lorg/spongycastle/asn1/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/TBSCertificate;->hi()Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public hj()Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/Certificate;->ayu:Lorg/spongycastle/asn1/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/TBSCertificate;->hj()Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    return-object v0
.end method

.method public hk()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/Certificate;->apX:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public hl()Lorg/spongycastle/asn1/DERBitString;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/Certificate;->ayv:Lorg/spongycastle/asn1/DERBitString;

    return-object v0
.end method
