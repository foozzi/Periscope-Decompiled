.class public Lorg/spongycastle/asn1/x509/TBSCertificate;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field aAI:Lorg/spongycastle/asn1/x509/Time;

.field aAJ:Lorg/spongycastle/asn1/x509/Time;

.field aAK:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

.field aAL:Lorg/spongycastle/asn1/DERBitString;

.field aAM:Lorg/spongycastle/asn1/DERBitString;

.field aeY:Lorg/spongycastle/asn1/ASN1Integer;

.field aek:Lorg/spongycastle/asn1/ASN1Integer;

.field agu:Lorg/spongycastle/asn1/ASN1Sequence;

.field ahV:Lorg/spongycastle/asn1/x509/Extensions;

.field apZ:Lorg/spongycastle/asn1/x500/X500Name;

.field aps:Lorg/spongycastle/asn1/x500/X500Name;

.field ayg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 7

    .line 72
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 73
    const/4 v3, 0x0

    .line 75
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->agu:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/spongycastle/asn1/DERTaggedObject;

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/spongycastle/asn1/ASN1Integer;->ˋ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->aek:Lorg/spongycastle/asn1/ASN1Integer;

    goto :goto_0

    .line 86
    :cond_0
    const/4 v3, -0x1

    .line 87
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->aek:Lorg/spongycastle/asn1/ASN1Integer;

    .line 90
    :goto_0
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->ﯨ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->aeY:Lorg/spongycastle/asn1/ASN1Integer;

    .line 92
    add-int/lit8 v0, v3, 0x2

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->ᓪ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->ayg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 93
    add-int/lit8 v0, v3, 0x3

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x500/X500Name;->ᒾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->aps:Lorg/spongycastle/asn1/x500/X500Name;

    .line 98
    add-int/lit8 v0, v3, 0x4

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object v4, v0

    .line 100
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/Time;->ᒃ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Time;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->aAI:Lorg/spongycastle/asn1/x509/Time;

    .line 101
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/Time;->ᒃ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Time;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->aAJ:Lorg/spongycastle/asn1/x509/Time;

    .line 103
    add-int/lit8 v0, v3, 0x5

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x500/X500Name;->ᒾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->apZ:Lorg/spongycastle/asn1/x500/X500Name;

    .line 108
    add-int/lit8 v0, v3, 0x6

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->ן(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->aAK:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 110
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    add-int/lit8 v1, v3, 0x6

    sub-int/2addr v0, v1

    add-int/lit8 v5, v0, -0x1

    :goto_1
    if-lez v5, :cond_1

    .line 112
    add-int/lit8 v0, v3, 0x6

    add-int/2addr v0, v5

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/DERTaggedObject;

    move-object v6, v0

    .line 114
    invoke-virtual {v6}, Lorg/spongycastle/asn1/DERTaggedObject;->eW()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 117
    :pswitch_0
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lorg/spongycastle/asn1/DERBitString;->ʽ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->aAL:Lorg/spongycastle/asn1/DERBitString;

    .line 118
    goto :goto_2

    .line 120
    :pswitch_1
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lorg/spongycastle/asn1/DERBitString;->ʽ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->aAM:Lorg/spongycastle/asn1/DERBitString;

    .line 121
    goto :goto_2

    .line 123
    :pswitch_2
    const/4 v0, 0x1

    invoke-static {v6, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ᐝ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/Extensions;->ﺗ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->ahV:Lorg/spongycastle/asn1/x509/Extensions;

    .line 110
    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 126
    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static د(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/TBSCertificate;
    .locals 2

    .line 58
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;

    if-eqz v0, :cond_0

    .line 60
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/x509/TBSCertificate;

    return-object v0

    .line 62
    :cond_0
    if-eqz p0, :cond_1

    .line 64
    new-instance v0, Lorg/spongycastle/asn1/x509/TBSCertificate;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/TBSCertificate;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 67
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .line 190
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->agu:Lorg/spongycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public gU()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->aeY:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public gX()Lorg/spongycastle/asn1/x509/Extensions;
    .locals 1

    .line 185
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->ahV:Lorg/spongycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public hX()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->ayg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public he()I
    .locals 2

    .line 130
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->aek:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hf()Lorg/spongycastle/asn1/x500/X500Name;
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->aps:Lorg/spongycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public hg()Lorg/spongycastle/asn1/x509/Time;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->aAI:Lorg/spongycastle/asn1/x509/Time;

    return-object v0
.end method

.method public hh()Lorg/spongycastle/asn1/x509/Time;
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->aAJ:Lorg/spongycastle/asn1/x509/Time;

    return-object v0
.end method

.method public hi()Lorg/spongycastle/asn1/x500/X500Name;
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->apZ:Lorg/spongycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public hj()Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->aAK:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    return-object v0
.end method

.method public ia()Lorg/spongycastle/asn1/DERBitString;
    .locals 1

    .line 175
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->aAL:Lorg/spongycastle/asn1/DERBitString;

    return-object v0
.end method

.method public ib()Lorg/spongycastle/asn1/DERBitString;
    .locals 1

    .line 180
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->aAM:Lorg/spongycastle/asn1/DERBitString;

    return-object v0
.end method
