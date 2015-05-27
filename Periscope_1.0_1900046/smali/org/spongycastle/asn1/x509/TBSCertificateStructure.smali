.class public Lorg/spongycastle/asn1/x509/TBSCertificateStructure;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lorg/spongycastle/asn1/x509/X509ObjectIdentifiers;


# instance fields
.field aAI:Lorg/spongycastle/asn1/x509/Time;

.field aAJ:Lorg/spongycastle/asn1/x509/Time;

.field aAK:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

.field aAL:Lorg/spongycastle/asn1/DERBitString;

.field aAM:Lorg/spongycastle/asn1/DERBitString;

.field aAN:Lorg/spongycastle/asn1/x509/X509Extensions;

.field aeY:Lorg/spongycastle/asn1/ASN1Integer;

.field aek:Lorg/spongycastle/asn1/ASN1Integer;

.field agu:Lorg/spongycastle/asn1/ASN1Sequence;

.field apZ:Lorg/spongycastle/asn1/x500/X500Name;

.field aps:Lorg/spongycastle/asn1/x500/X500Name;

.field ayg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 7

    .line 74
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 75
    const/4 v3, 0x0

    .line 77
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;->agu:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/spongycastle/asn1/DERTaggedObject;

    if-eqz v0, :cond_0

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/spongycastle/asn1/ASN1Integer;->ˋ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;->aek:Lorg/spongycastle/asn1/ASN1Integer;

    goto :goto_0

    .line 88
    :cond_0
    const/4 v3, -0x1

    .line 89
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;->aek:Lorg/spongycastle/asn1/ASN1Integer;

    .line 92
    :goto_0
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->ﯨ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;->aeY:Lorg/spongycastle/asn1/ASN1Integer;

    .line 94
    add-int/lit8 v0, v3, 0x2

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->ᓪ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;->ayg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 95
    add-int/lit8 v0, v3, 0x3

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x500/X500Name;->ᒾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;->aps:Lorg/spongycastle/asn1/x500/X500Name;

    .line 100
    add-int/lit8 v0, v3, 0x4

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object v4, v0

    .line 102
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/Time;->ᒃ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Time;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;->aAI:Lorg/spongycastle/asn1/x509/Time;

    .line 103
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/Time;->ᒃ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Time;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;->aAJ:Lorg/spongycastle/asn1/x509/Time;

    .line 105
    add-int/lit8 v0, v3, 0x5

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x500/X500Name;->ᒾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;->apZ:Lorg/spongycastle/asn1/x500/X500Name;

    .line 110
    add-int/lit8 v0, v3, 0x6

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->ן(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;->aAK:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 112
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    add-int/lit8 v1, v3, 0x6

    sub-int/2addr v0, v1

    add-int/lit8 v5, v0, -0x1

    :goto_1
    if-lez v5, :cond_1

    .line 114
    add-int/lit8 v0, v3, 0x6

    add-int/2addr v0, v5

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/DERTaggedObject;

    move-object v6, v0

    .line 116
    invoke-virtual {v6}, Lorg/spongycastle/asn1/DERTaggedObject;->eW()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 119
    :pswitch_0
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lorg/spongycastle/asn1/DERBitString;->ʽ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;->aAL:Lorg/spongycastle/asn1/DERBitString;

    .line 120
    goto :goto_2

    .line 122
    :pswitch_1
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lorg/spongycastle/asn1/DERBitString;->ʽ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;->aAM:Lorg/spongycastle/asn1/DERBitString;

    .line 123
    goto :goto_2

    .line 125
    :pswitch_2
    invoke-static {v6}, Lorg/spongycastle/asn1/x509/X509Extensions;->ᕪ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/X509Extensions;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;->aAN:Lorg/spongycastle/asn1/x509/X509Extensions;

    .line 112
    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 128
    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static ہ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/TBSCertificateStructure;
    .locals 2

    .line 60
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;

    if-eqz v0, :cond_0

    .line 62
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;

    return-object v0

    .line 64
    :cond_0
    if-eqz p0, :cond_1

    .line 66
    new-instance v0, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 69
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .line 192
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;->agu:Lorg/spongycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public hf()Lorg/spongycastle/asn1/x500/X500Name;
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;->aps:Lorg/spongycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public hi()Lorg/spongycastle/asn1/x500/X500Name;
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;->apZ:Lorg/spongycastle/asn1/x500/X500Name;

    return-object v0
.end method
